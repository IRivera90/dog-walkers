curl "http://localhost:4741/dogs" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
