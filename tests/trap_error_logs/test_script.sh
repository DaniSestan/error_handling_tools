#!/bin/bash

# source /home/dani/Work/Work-Projects/error_handling_tools/trap_error_logs/.env
source /home/dani/Work/Work-Projects/_tmp/sample_project/trap_error_logs/.env
source $TRAP_ERROR_LOGS_MAIN_EXEC

ls /foo
ls /foo/bar
ls /foo/bar/baz