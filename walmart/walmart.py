import requests
import json
import subprocess
from bs4 import BeautifulSoup
from fake_useragent import UserAgent

url = "https://www.soriana.com/pechuga-san-rafael-balance-pavo-250-g/2530899.html"
#ua = UserAgent()
#user_agent = ua.random
script_path = "scraper.sh"
result_html = subprocess.check_output(['bash', script_path, '-s'], stderr=subprocess.STDOUT, text=True, universal_newlines=True)

# Send an HTTP GET request to the URL
#headers = {"User-Agent": user_agent}
#response = requests.get(url, headers=headers)

if result_html:
    soup = BeautifulSoup(result_html, "html.parser")
    product_title = []
    product_price = []
    product_description = []
    product_code = []

    product = soup.find(type="application/ld+json")
    for p in product:
        product = p
    product = json.loads(product)
    price = product["offers"]["price"]
    title = product["name"]
    desc = product["description"]
    code = product["sku"]


    print("Title:", title)
    print("Price:", price)
    print("Description:", desc)
    print("EAN code:", code)

else:
    print("Failed to retrieve the webpage. Status code:", response.status_code)

