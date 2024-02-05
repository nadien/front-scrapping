#!/bin/bash

if curl -v https://despensa.bodegaaurrera.com.mx/p/consola-xbox-series-s-512-gb-digital-blanco-00088984265135 2>&1 | grep -q 'HTTP/2 200'; then
    #HTTP response is 200 OK
    
curl -s 'https://www.costco.com.mx/rest/v2/mexico/products/560484/?fields=FULL&lang=es_MX&curr=MXN' \
  -H 'authority: www.costco.com.mx' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: es,en-GB;q=0.9,en-US;q=0.8,en;q=0.7' \
  -H 'content-type: application/json' \
  -H 'cookie: session_uuid=ef199733-8ee4-4f07-beed-54e1b7603c56; ROUTEID=.app21; HAPC=fe01; GCLB=CI2R5ufPubGNGQ; SiteMessage_SiteMessageParagraphComponent1=Visited; tire-search-criteria=dGV4dA==; JSESSIONID=Y21-0c9027c2-d414-4609-a52a-ad886b04cc05; SF_SESSION_ID=WTIxLTBjOTAyN2MyLWQ0MTQtNDYwOS1hNTJhLWFkODg2YjA0Y2MwNQ==; ak_bmsc=B2DFB2290154B4C8F870D563707BFF20~000000000000000000000000000000~YAAQDyfIF39JrUmNAQAAxtYkexa2d7+KJylOlMnqrJzs5iC2gudUijRPLcIrpHN50pcoc6qkDmu0y/IPAk2YS/a9kweXNGY6lfvmE0z7R4Fi9TXfgDi1VkBfLwd27TeXNQ5yqvECYxdN0FwrgmZCB3wFt8ZD+jtwQ3CDob9vr53RUQELZgo25ijL4q1lP+cuszDo5m7lsW79Vde4ZNDRIQlLEfQhQ75gXJ0sYoCjzT/VAYQjH0YHVdw41zX1fEtQkSNf5yWAQ9MxDfkOlxVXd1aTQUNJHEWz6x5CqjFjnZEcOR8PgyZIOMDH5HyDVgYZflcznHFwZvdgwy/XgVK4vg4TV1B7xDUaFtGSfWNOEXwv/o9uaGPLG4Hk6H7YrQgI6v8dLs5oVbm5pODav+kG5j/mkMut4ZUrNBUB8RHEaxq67pF62cnjgUVeBuIROvgkqHX/N0E1D37WuhIoq/dgJeQAuAQnbYTLYHNQR2SxOiMuPTi9U/6xtLq6tDQ7HRXM+eRlQw==; UserPreferences=visited--; generic-postal=NDUwNTA=; context_segment=ZXNfTVh8bWV4aWNvfEFfaHBfdGltZS1yZXN0cmljdGlvbnxhbm9ueW1vdXN8Y29zdGNvTWV4aWNvVGVwZWppfGN1c3RvbWVyZ3JvdXA=; NoCookie=true; CSRFToken=5061a207-7599-485f-919b-ae25d61ea0e9; tire-search-filters=L0dyb2NlcnkvR3JvY2VyeS9GYXJtYWNpYS9jL2Nvc18yMC4xLjE2P21vYmlsZUxpbms9Y29zdGNvOiUyRiUyRmNhdGVnb3J5; mexico_RVP=560484~%23568337~%23646283~%23573977; BVBRANDID=678e40dd-618c-446e-adbb-3ca0a5e8f0c6; BVBRANDSID=396ededf-9b8b-4fcc-8f8d-cdcfe6d255dc; bm_sv=2E9C8859A9E888B3CEC0374CAFFB5B4F~YAAQDyfIF+2arUmNAQAA3TAyexY644hqCDGn9L3hxkaYLq/eMbNQ0qUfpqIRv2oy5C6SpQ5hIeGxAbnreP3Geoiw3WtitRIpg83I2ccQLz/vlQ3zp7hAXtqnYsEBOioygY0Oc9Fya02OZj26Gx2PqMwVL8YF3rcOh5UywyJUQ5P3BLvI+tN5yqvXPffCQJPOlukdvg1viMkJJa+tZVqNJGMT0xfX4TyUdBgISziaJTA4T8vFfabZPX31rFNC+hEdP32Wxw==~1' \
  -H 'if-none-match: "000abf37010a53024683e4ed86a859e5f-gzip"' \
  -H 'referer: https://www.costco.com.mx/Grocery/Grocery/Farmacia/Kirkland-Signature-Paracetamol-500-mg-100-Tabletas/p/560484' \
  -H 'sec-ch-ua: "Not_A Brand";v="8", "Chromium";v="120"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36' \
  --compressed

else
    echo "HTTP response is not 200 OK"
fi
