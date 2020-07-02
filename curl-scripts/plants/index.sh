#!/bin/sh

API="http://localhost:4741"
URL_PATH="/plants"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo

# TOKEN=6dfb3e3f032af1c60b40c13dde5b4a48 sh curl-scripts/plants/index.sh
