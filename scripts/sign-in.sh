#!/bin/bash

curl "http://localhost:3001/sessions" \
  --include \
  --request POST \
  --data '{
    "user": {
      "email": "dko@ga",
      "password": "1234",
    }
  }'

echo