#!/bin/bash
rm -rf /tmp/ip
touch /tmp/ip
read -p "Enter Threshold no of connections: "  number
netstat -atun | awk '{print $5}' | cut -d: -f1 | sed -e '/^$/d' |sort | uniq -c | sort -n | awk '{print $1}' > /tmp/c
while read -r c; do
if [ $c -gt $number ]; then
echo C  >>  /tmp/ip
fi
done < /tmp/c
nip=$(wc -l < /tmp/ip)
netstat -atun | awk '{print $5}' | cut -d: -f1 | sed -e '/^$/d' |sort | uniq -c | sort -n | awk '{print $2}' | tail -$nip > /tmp/count
while read -r ip; do
    csf -d $ip
done < /tmp/count
