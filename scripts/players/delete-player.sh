#!/bin/bash

# call using:
# ID=3 sh scripts/patients/delete-patient.sh

curl "http://localhost:4741/players/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
