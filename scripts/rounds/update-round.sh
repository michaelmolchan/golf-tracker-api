#!/bin/bash

curl "http://localhost:4741/rounds/{$ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "round": {
      "date": "'"${DATE}"'",
      "course": "'"${COURSE}"'",
      "location": "'"${LOCATION}"'",
      "par": "'"${PAR}"'",
      "score": "'"${SCORE}"'"
    }
  }'

echo
