# deny-ip-in-csf
Linux shell script to deny ips in csf firewall.

Requirements:
1. Linux machine
2. CSF firewall

This shell script finds all the ips that have number of connections to your machine above a provided threshold value.
Then blocks all those ips by adding them to csf.deny.

First clone the repository to your local machine:
# git clone https://github.com/prinzjoseph/deny-ip-in-csf.git

Give execution permission to deny.sh:
# chmod +x deny.sh

Now you can run the script:
# ./deny.sh
