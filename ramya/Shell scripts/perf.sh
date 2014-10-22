#!/bin/sh
#df -H  | awk '{print $1 " "  $5}' 

email=rsreebhashyam@nisum.com

# send  plain text as email body
echo "Test" | mailx -s "System Performance Report" $email

# send output of free as email body
free -l | mailx -s "System Performance Report" $email

# save output of free to a file and send attachment as email body
free -l > perfreport.txt
uuencode file perfreport.txt | mailx -s "System Performance Report" $email

# save output of free to a file and send attachment as email body along with email body
free -l > perfreport.txt
echo "Performance report attached";uuencode file perfreport.txt | mailx -s "System Performance Report" $email
