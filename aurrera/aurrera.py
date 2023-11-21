import subprocess
import requests
import json
import os

script_path = "scraper.sh"

try:
    result = subprocess.check_output(['bash', script_path, '-s'], stderr=subprocess.STDOUT, text=True, universal_newlines=True)
    result = json.loads(result)
    product = result[1]["data"]["getProductsBySKU"][0]
    title = product["name"]
    price = product["price"]
    description = product["description"]
    #EAN CODE
    code = product["ean"][0]
    print("Title:" , title, "\nPrice:", price, "\nDescription:", description,"\nEAN code:", code)
except subprocess.CalledProcessError as e:
    print("Error running Bash script. Exit code:", e.returncode)
    print("Error output:\n", e.output)
