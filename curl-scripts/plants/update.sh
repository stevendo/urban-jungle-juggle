#!/bin/bash

API="http://localhost:4741"
URL_PATH="/plants"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
  "plant": {
    "commonName": "'"${COMNAME}"'",
    "speciesName": "'"${SPECNAME}"'",
    "nickName": "'"${NICKNAME}"'",
    "waterReq": "'"${WATREQ}"'",
    "sunReq": "'"${SUNREQ}"'",
    "soilReq": "'"${SOILREQ}"'"
  }
}'

echo

# COMNAME="Chinese Money Plant" SPECNAME="Pilea Peperomioides" NICKNAME="Larry" WATREQ="Mostly dry before waterings" SUNREQ="Avoid direct sun" SOILREQ="Well draining potting soil" ID=5efa23a13a953a430a6a92fb TOKEN=2a038be932ff549396f91135d738001e sh curl-scripts/plants/update.sh

# COMNAME="Chinese Money Plant" SPECNAME="Pilea Peperomioides" NICKNAME="David" WATREQ="Mostly dry before next watering" SUNREQ="No direct sun" SOILREQ="Drain well" ID=5efa01d60fc6113e72b18c36 TOKEN=f0083deb754ef95d0e0c72a3ad2735c4 sh curl-scripts/plants/update.sh
