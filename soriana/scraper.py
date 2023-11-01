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
    product_titles = []
    product_prices = []

    for product in soup.find_all("div", class_="product-detail__content-container"):
        price = product.find("span", class_="cart-price").text
        product_prices.append(price)

    for product in soup.find_all("div", class_="c-product-name"):
        title = product.find("h1", class_="product-name").text
        product_titles.append(title)

    for title, price in zip(product_titles, product_prices):
        print("Title:", title)
        print("Price:", price)
        print()

else:
    print("Failed to retrieve the webpage. Status code:", response.status_code)

