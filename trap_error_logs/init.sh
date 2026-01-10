#!/usr/bin/env bash

error_handling_tools_filepath=$(dirname "$0")/../
echo -n "Absolute path of the project directory where you are initializing trap_error_logs: "
read -r proj_dest_filepath

# From error_handling_tools project root directory:
cd $error_handling_tools_filepath/trap_error_logs
trap_error_logs_filepath=$(pwd)
echo "trap_error_logs_filepath: $trap_error_logs_filepath"
cp -r $trap_error_logs_filepath $proj_dest_filepath
cd $proj_dest_filepath/trap_error_logs

sed -i "s|^TRAP_ERROR_LOGS_MAIN_EXEC=.*|TRAP_ERROR_LOGS_MAIN_EXEC=$proj_dest_filepath/trap_error_logs/main.sh|" .env

sed -i "s|^TRAP_ERROR_LOGS_FILEPATH=.*|TRAP_ERROR_LOGS_FILEPATH=$proj_dest_filepath/trap_error_logs/error_logs.json|" .env

sed -i "s|^BASH_ERROR_LOGS_FILEPATH=.*|BASH_ERROR_LOGS_FILEPATH=$proj_dest_filepath/trap_error_logs/bash_errors.log|" .env