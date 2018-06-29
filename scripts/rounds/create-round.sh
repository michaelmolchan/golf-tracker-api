#!/bin/bash

curl "http://localhost:4741/rounds" \
  --include \
  --request POST \
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
