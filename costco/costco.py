import subprocess
import requests
import json
import os

script_path = "scraper.sh"

try:
    result = subprocess.check_output(['bash', script_path, '-s'], stderr=subprocess.STDOUT, text=True, universal_newlines=True)
    result = json.loads(result)
    product = result
    title = product["name"]
    price = product["basePrice"]["value"]
    description = product["description"]
    #EAN CODE
    code = product["ean"]
    print("Title:" , title, "\nPrice:", price, "\nDescription:", description,"\nEAN code:", code)
except subprocess.CalledProcessError as e:
    print("Error running Bash script. Exit code:", e.returncode)
    print("Error output:\n", e.output)
