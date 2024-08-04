#!/bin/bash

#Read through each line of the log file
#search for keywords that indicate potential suspicious login 
#IF line contains this keyword, add to suspicious_actvity.log 
#automate to run daily 

#Assigned path to variable. This makes it easier to read the  script.
logs="/var/log/auth_log.log"
suspicious_activity="/var/log/suspicious_activity.log"


#for loop used to iterate over the auth log 
for each in "$logs" 
do
#grep searches for log lines that have the word unauthorized and is  appended to the suspicious activity logs
    grep "Unauthorized" "$logs" >> "$suspicious_activity"

#confirms that the unauthorized activity has been logged
    echo "Unauthorized activity logged on $(date)"
done

