result=$(curl -s -X GET -H "Authorization: Bearer 2ODsKzDKULm3OJRkk7hqkdvBNai_3KSvSoN1L6tpKzQkkwfj3" -H "Ngrok-Version: 2" https://api.ngrok.com/tunnels | jq -r '.tunnels[].public_url')
url=$(echo $result | sed 's#^tcp://##;s/:.*$//')
port=$(echo $result | sed 's/.*://')
ssh pi@$url -p $port
