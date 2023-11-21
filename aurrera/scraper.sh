#!/bin/bash

if curl -v https://despensa.bodegaaurrera.com.mx/p/consola-xbox-series-s-512-gb-digital-blanco-00088984265135 2>&1 | grep -q 'HTTP/2 200'; then
    #HTTP response is 200 OK
    
    curl -s 'https://nextgentheadless.instaleap.io/api/v3' \
      -H 'authority: nextgentheadless.instaleap.io' \
      -H 'accept: */*' \
      -H 'accept-language: en-US,en;q=0.9' \
      -H 'apollographql-client-name: Ecommerce' \
      -H 'apollographql-client-version: 3.39.6' \
      -H 'cache-control: no-cache' \
      -H 'content-type: application/json' \
      -H 'origin: https://despensa.bodegaaurrera.com.mx' \
      -H 'pragma: no-cache' \
      -H 'referer: https://despensa.bodegaaurrera.com.mx/p/'$1 \
      -H 'sec-ch-ua: "Google Chrome";v="119", "Chromium";v="119", "Not?A_Brand";v="24"' \
      -H 'sec-ch-ua-mobile: ?0' \
      -H 'sec-ch-ua-platform: "Linux"' \
      -H 'sec-fetch-dest: empty' \
      -H 'sec-fetch-mode: cors' \
      -H 'sec-fetch-site: cross-site' \
      -H 'token;' \
      -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36' \
      --data-raw $'[{"operationName":"GetCategoryTree","variables":{"getCategoryInput":{"clientId":"BODEGA_AURRERA","storeReference":"9999"}},"query":"fragment CategoryFields on CategoryModel {\\n  active\\n  boost\\n  hasChildren\\n  categoryNamesPath\\n  isAvailableInHome\\n  level\\n  name\\n  path\\n  reference\\n  slug\\n  photoUrl\\n  imageUrl\\n  shortName\\n  isFeatured\\n  isAssociatedToCatalog\\n  __typename\\n}\\n\\nfragment CategoriesRecursive on CategoryModel {\\n  subCategories {\\n    ...CategoryFields\\n    subCategories {\\n      ...CategoryFields\\n      subCategories {\\n        ...CategoryFields\\n        __typename\\n      }\\n      __typename\\n    }\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment CategoryModel on CategoryModel {\\n  ...CategoryFields\\n  ...CategoriesRecursive\\n  __typename\\n}\\n\\nquery GetCategoryTree($getCategoryInput: GetCategoryInput\u0021) {\\n  getCategory(getCategoryInput: $getCategoryInput) {\\n    ...CategoryModel\\n    __typename\\n  }\\n}"},{"operationName":"GetProductsBySKU","variables":{"getProductsBySkuInput":{"clientId":"BODEGA_AURRERA","skus":["00088984265135"],"storeReference":"9999"}},"query":"fragment CategoryFields on CategoryModel {\\n  active\\n  boost\\n  hasChildren\\n  categoryNamesPath\\n  isAvailableInHome\\n  level\\n  name\\n  path\\n  reference\\n  slug\\n  photoUrl\\n  imageUrl\\n  shortName\\n  isFeatured\\n  isAssociatedToCatalog\\n  __typename\\n}\\n\\nfragment CatalogProductTagModel on CatalogProductTagModel {\\n  description\\n  enabled\\n  textColor\\n  filter\\n  tagReference\\n  backgroundColor\\n  name\\n  __typename\\n}\\n\\nfragment CatalogProductFormatModel on CatalogProductFormatModel {\\n  format\\n  equivalence\\n  unitEquivalence\\n  __typename\\n}\\n\\nfragment PromotionCondition on PromotionCondition {\\n  quantity\\n  price\\n  __typename\\n}\\n\\nfragment Promotion on Promotion {\\n  type\\n  isActive\\n  conditions {\\n    ...PromotionCondition\\n    __typename\\n  }\\n  description\\n  endDateTime\\n  startDateTime\\n  __typename\\n}\\n\\nfragment PromotedModel on PromotedModel {\\n  isPromoted\\n  onLoadBeacon\\n  onClickBeacon\\n  onViewBeacon\\n  onBasketChangeBeacon\\n  onWishlistBeacon\\n  __typename\\n}\\n\\nfragment SpecificationModel on SpecificationModel {\\n  title\\n  values {\\n    label\\n    value\\n    __typename\\n  }\\n  __typename\\n}\\n\\nfragment CatalogProductModel on CatalogProductModel {\\n  name\\n  price\\n  photosUrl\\n  unit\\n  subUnit\\n  subQty\\n  description\\n  sku\\n  ean\\n  maxQty\\n  minQty\\n  clickMultiplier\\n  nutritionalDetails\\n  isActive\\n  slug\\n  brand\\n  stock\\n  securityStock\\n  boost\\n  isAvailable\\n  location\\n  promotion {\\n    ...Promotion\\n    __typename\\n  }\\n  categories {\\n    ...CategoryFields\\n    __typename\\n  }\\n  categoriesData {\\n    ...CategoryFields\\n    __typename\\n  }\\n  formats {\\n    ...CatalogProductFormatModel\\n    __typename\\n  }\\n  tags {\\n    ...CatalogProductTagModel\\n    __typename\\n  }\\n  specifications {\\n    ...SpecificationModel\\n    __typename\\n  }\\n  promoted {\\n    ...PromotedModel\\n    __typename\\n  }\\n  score\\n  relatedProducts\\n  ingredients\\n  stockWarning\\n  __typename\\n}\\n\\nquery GetProductsBySKU($getProductsBySkuInput: GetProductsBySKUInput\u0021) {\\n  getProductsBySKU(getProductsBySKUInput: $getProductsBySkuInput) {\\n    ...CatalogProductModel\\n    __typename\\n  }\\n}"}]' \
    --compressed

else
    echo "HTTP response is not 200 OK"
fi
