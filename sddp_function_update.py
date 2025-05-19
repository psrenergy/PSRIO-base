import pandas as pd
from collections import defaultdict

filename = r"D:\SDDP_3\sddp\indexdat.csv"
indexdatlua_path = r"D:\PSRIO-base\extensions\indexdat.lua"

# Delete the indexdat.lua file if it exists
try:
    with open(indexdatlua_path, "w") as f:
        f.write("")  # Create an empty file
except FileNotFoundError:
    pass


df = pd.read_csv(filename, encoding='latin1', header=1)

psrio_function = df['PSRIO'].str.replace("()", "", regex=False)
file_name = df['Filename']

classes_dict = defaultdict(list)
for i in range(len(psrio_function)):
    if pd.isna(file_name[i]):
        continue

    collection_name = psrio_function[i].split(":")[0]
    if collection_name == "Generic":
        continue
    function_name = psrio_function[i].split(":")[1]
    if ((("\""+file_name[i] + "\"") in function_name)):
        continue
    
    classes_dict[collection_name].append((function_name, file_name[i]))

for key, values in classes_dict.items():
    print(f"key: {key}\n")
    # with open(f"{str(key).lower()}.lua", "a") as f:  # Use "a" to append if the file already exists
    with open(indexdatlua_path, "a") as f:
        f.write("-------------------------------------------------------------------------\n")
        f.write(f"--{key} extension\n")
        f.write("-------------------------------------------------------------------------\n\n")
        for function_name, file_name in values:
            print(f"function_name: {function_name}\n")
            print(f"file_name: {file_name}\n")
            
            f.write(f"function {key}.{function_name}(self, model)\n")
            f.write("   local model = \"SDDP\" or model;\n")
            f.write("   if model == \"SDDP\" then\n")
            f.write(f"      return self:load_sddp(\"{file_name}\");\n")
            f.write("   else\n")
            f.write("       error(\"Model not supported\");\n")
            f.write("   end\n")
            f.write("end\n\n")