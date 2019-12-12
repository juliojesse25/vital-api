#!/bin/bash

curl "http://localhost:3000/sessions" \
  --include \
  --request POST \
  # --header "Content-Type: application/json" \
  --data '{
    "user": {
      "email": "dko@ga",
      "password": "1234",
    }
  }'

echo