#!/bin/sh

API="http://localhost:4741"
URL_PATH="/plants"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo

# TOKEN=e3f3e537866e22daa05925342e960bcd sh curl-scripts/plants/index.sh
