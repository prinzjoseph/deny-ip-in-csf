# deny-ip-in-csf
Linux shell script to deny ips in csf firewall.

Requirements:
1. Linux machine
2. CSF firewall

This shell script finds all the ips that have number of connections to your machine above a provided threshold value.
Then blocks all those ips by adding them to csf.deny.

First clone the repository to your local machine:
> git clone https://github.com/prinzjoseph/deny-ip-in-csf.git

Change directory:
> cd deny-ip-in-csf

Give execution permission to deny.sh:
> chmod +x deny.sh

Now you can run the script:
> ./deny.sh

The script will ask you for a threshold value of connections, and blocks all the ips that have more connections than the threshold value given by you.
