#!/bin/bash

#trap 'source /home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/error_handler.sh "$BASH_COMMAND" "$?"' ERR
filepath="/home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/error_handler.sh"
trap "source \"$filepath\" \"$BASH_COMMAND\" \"$?\"" ERR