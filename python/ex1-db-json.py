
import json
import os

if os.path.isfile("/tmp/bazadedate.json"):
    with open("/tmp/bazadedate.json", mode="r")as file:
        detalii_cursant = json.load(file)

detalii_cursant["varsta"]=56

print(detalii_cursant)

with open("/tmp/bazadedate.json", mode="w") as file:
    json.dump(detalii_cursant, file, indent=4)

    