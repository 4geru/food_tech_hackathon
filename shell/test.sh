(echo -n '{"image": "'; base64 './kyabetsu.jpeg'; echo '"}') |
curl -X POST -H "Content-Type: application/json" -d @-  https://d811c88a.ngrok.io/photos

# curl -X POST -F file='./kyabetsu.jpeg' https://d811c88a.ngrok.io/photos --cookie-jar cookie | grep csrf

