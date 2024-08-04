#!/bin/bash

#Read through each line of the log file
#search for keywords that indicate potential suspicious login 
#IF line contains this keyword, add to suspicious_actvity.log 
#automate to run daily 


logs="/var/log/auth_log.log"
suspicious_activity="/var/log/suspicious_activity.log"


for each in "$logs" 
do
    grep "Unauthorized" "$logs" >> "$suspicious_activity"
    echo "Unauthorized activity logged on $(date)"
done

