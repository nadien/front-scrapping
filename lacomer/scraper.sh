#!/bin/bash

if curl -v https://despensa.bodegaaurrera.com.mx/p/consola-xbox-series-s-512-gb-digital-blanco-00088984265135 2>&1 | grep -q 'HTTP/2 200'; then
    #HTTP response is 200 OK
    
   curl -s 'https://www.lacomer.com.mx/lacomer-api/api/v1/public/articulopasillo/detalleArticulo?artEan=629307017544&noPagina=1&succId=446' \
  -H 'authority: www.lacomer.com.mx' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: es,en-GB;q=0.9,en-US;q=0.8,en;q=0.7' \
  -H 'cache-control: no-cache' \
  -H $'cookie: JSESSIONID=bE91_bHDc25u_TzWaSSm0J_tBCYf1ULfEb6VF0hYazUXDDjfL1fY\u0021620407438; dtCookie=v_4_srv_5_sn_12D13EBD2E5B15C9D9AD36C52B81AD1D_perc_100000_ol_0_mul_1_app-3A633c65e645b36db7_0; _gcl_au=1.1.1962086832.1707081578; _gid=GA1.3.1044416874.1707081578; _tt_enable_cookie=1; _ttp=R5wvY2NC4f_wTQ2_tPqOxmiBr3K; gbi_sessionId=cls80aozx00002v6hk1nbo38s; gbi_visitorId=cls80aozx00012v6hg4ft0ran; mdLogger=false; kampyle_userid=e5ca-8094-3add-2f43-1e73-46a1-3777-4352; __cf_bm=9OSPWKzb7lj78fMMam5g_qGLOs0HlCNMRdHFdU7OabM-1707082865-1-AfcFKW+MRpmARiXdSQmBInAxSSx7KrJjUxdcc/GB65ErLoFDnjoMYz3JQUDxa51NFVuW0tDAxCKFtCw5FyCV8ug=; kampyleUserSession=1707082868583; kampyleUserSessionsCount=3; vmg_ck_sucursalDefaultPorDia=sinredirect; kampyleSessionPageCounter=4; _ga_RG59JY5GCG=GS1.1.1707081577.1.1.1707082972.59.0.0; _gat_UA-98190441-1=1; _ga_387TC0RV4M=GS1.1.1707081578.1.1.1707082973.0.0.0; _ga=GA1.3.170287050.1707081577' \
  -H 'pragma: no-cache' \
  -H 'referer: https://www.lacomer.com.mx/lacomer/' \
  -H 'sec-ch-ua: "Not_A Brand";v="8", "Chromium";v="120"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36' \
  -H 'x-dtpc: 5$82972183_343h17vQEMCPWJISLFMIRUEASPHFPPKWAASUAKF-0e0' \
  --compressed 
else
    echo "HTTP response is not 200 OK"
fi
