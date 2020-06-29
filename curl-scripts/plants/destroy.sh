#!/bin/bash

API="http://localhost:4741"
URL_PATH="/plants"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo

# ID=5efa23a13a953a430a6a92fb TOKEN=2a038be932ff549396f91135d738001e sh curl-scripts/plants/destroy.sh
