#!/bin/bash

source "$(dirname "$0")/config/.env"
#trap 'source /home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/error_handler.sh "$BASH_COMMAND" "$?"' ERR
filepath="/home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/error_handler.sh"
trap "source \"$filepath\" \"$BASH_COMMAND\" \"$?\"" ERR

echo "trap_error_logs_filepath: $TRAP_ERROR_LOGS_FILEPATH" #/home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/tests