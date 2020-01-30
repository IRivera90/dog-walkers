curl "http://localhost:4741/dogs/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "dog": {
      "name": "'"${NAME}"'",
      "breed": "'"${BREED}"'"
    }
  }'
