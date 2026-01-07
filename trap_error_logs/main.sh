#!/bin/bash

# sudo bash /home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/main.sh

log_index=$(jq "length + 1" $TRAP_ERROR_LOGS)
bash_error=$(tail -n 1 $BASH_ERROR_LOGS)
error_log=$(echo "{
  \"log_index\": \"$log_index\",
  \"timestamp_utc\": \"$(date '+%Y-%m-%d %H:%M:%S')\",
  \"timestamp_local\": \"$(date '+%Y-%m-%d %H:%M:%S %Z')\",
  \"user\": \"$(whoami)\",
  \"command\": \"$BASH_COMMAND\",
  \"error\": \"$bash_error\",
  \"exit_code\": \"$?\"
}" | jq .)
updated_error_log=$(jq --argjson obj "$error_log" '. += [$obj]' $TRAP_ERROR_LOGS)
echo "$updated_error_log" > $TRAP_ERROR_LOGS