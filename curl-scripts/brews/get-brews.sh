#!/bin/bash

curl "http://localhost:4741/brews" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
