#!/bin/bash

curl "http://localhost:3000/registrations" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "user": {
      "email": "dko@ga",
      "name": "dko@ga",
      "password": "1234",
      "password_confirmation": "1234"
    }
  }'

echo