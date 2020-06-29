#!/bin/bash

API="http://localhost:4741"
URL_PATH="/plants"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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

# COMNAME="Pancake Plant" SPECNAME="Pilea Peperomioides" NICKNAME="Larry" WATREQ="Mostly dry before waterings" SUNREQ="Avoid direct sun" SOILREQ="Well draining potting soil" TOKEN=2a038be932ff549396f91135d738001e sh curl-scripts/plants/create.sh
