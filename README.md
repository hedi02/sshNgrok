# sshNgrok
ssh to ever-changing endpoint of free ngrok

Ngrok (https://ngrok.com/) provide free SSH tunelling service to machine that doesn't have public IP. With it, we can expose our machine to the internet.
However, in the free tier, the endpoint URL for SSH is changing every few days or when the service is restarted.
Utilizing the API provided, it is possible to read the current endpoint; thus, login automatically without checking Ngrok web dashboard.

Prerequisite: jq for json parsing
