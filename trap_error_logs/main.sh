#!/bin/bash

filepath="/home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/error_handler.sh"
trap "source \"$filepath\" \"$BASH_COMMAND\" \"$?\"" ERR

echo "trap_error_logs_filepath: $TRAP_ERROR_LOGS_FILEPATH"

# there should be an option to set the project_root by hard-coding it's value from within the .env file
# if this value is not assigned to the PROJECT_ROOT var, then the script should default to the DEFAULT_PROJECT_ROOT var

# Default val is set as a dynamic var from within the main script, and that var's val is then assigned to the DEFAULT_PROJECT_ROOT var in the .env file