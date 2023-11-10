import requests
from bs4 import BeautifulSoup
from fake_useragent import UserAgent

url = "https://www.soriana.com/pechuga-san-rafael-balance-pavo-250-g/2530899.html"
ua = UserAgent()
user_agent = ua.random

# Send an HTTP GET request to the URL
headers = {"User-Agent": user_agent}
response = requests.get(url, headers=headers)

print(response)
if response.status_code == 200:
    soup = BeautifulSoup(response.text, "html.parser")
    product_title = []
    product_price = []
    product_description = []
    product_code = []

    for product in soup.find_all("div", class_="product-detail__content-container"):
        price = product.find("span", class_="cart-price").text
        product_price.append(price)

    for product in soup.find_all("div", class_="c-product-name"):
        title = product.find("h1", class_="product-name").text
        product_title.append(title)

    for product in soup.find_all("div", class_="description-and-detail Soriana"):
        desc = product.find("div", id="videosMobile").text
        product_description.append(desc)
    
    #EAN code
    for product in soup.find_all("script"):
        code = product.get("data-flix-ean")
        if code is not None:
            product_code.append(code)

    for title, price, desc, code in zip(product_title, product_price, product_description, product_code):
        print("Title:", title)
        print("Price:", price)
        print("Description:", desc)
        print("EAN code:", code)

else:
    print("Failed to retrieve the webpage. Status code:", response.status_code)

