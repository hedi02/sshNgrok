result=$(curl -s -X GET -H "Authorization: Bearer API_KEY" -H "Ngrok-Version: 2" https://api.ngrok.com/tunnels | jq -r '.tunnels[].public_url')
url=$(echo $result | sed 's#^tcp://##;s/:.*$//')
port=$(echo $result | sed 's/.*://')
ssh pi@$url -p $port
