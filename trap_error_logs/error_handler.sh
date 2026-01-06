#!/bin/bash

# sudo bash /home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/main.sh

error_log=$(echo "{
  \"timestamp_utc\": \"$(date '+%Y-%m-%d %H:%M:%S')\",
  \"timestamp_local\": \"$(date '+%Y-%m-%d %H:%M:%S %Z')\",
  \"user\": \"$(whoami)\",
  \"command\": \"$BASH_COMMAND\",
  \"error\": \"EPH\",
  \"exit_code\": \"$?\"
}" | jq .)

updated_error_log=$(jq --argjson obj "$error_log" '. += [$obj]' /home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/error_log.json)
#updated_error_log=$(jq --argjson obj "$error_log" '. += [$obj]' /error_log.json)

echo "$updated_error_log" > /home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/error_log.json
#echo "$updated_error_log" > /error_log.json