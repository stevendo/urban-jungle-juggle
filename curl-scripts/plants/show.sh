#!/bin/sh

API="http://localhost:4741"
URL_PATH="/plants"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo

# TOKEN=2a038be932ff549396f91135d738001e ID=5efa23a13a953a430a6a92fb sh curl-scripts/plants/show.sh
