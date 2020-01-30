curl "http://localhost:4741/dogs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "dog": {
      "name": "'"${NAME}"'",
      "breed": "'"${BREED}"'"
    }
  }'

echo
