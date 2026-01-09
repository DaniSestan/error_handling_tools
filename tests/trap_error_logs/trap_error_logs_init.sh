#!/bin/bash

# git clone git@github.com:DaniSestan/error_handling_tools.git
# bash /home/dani/Work/Work-Projects/_tmp/tests/test_script.sh
# _________________________________

# From error_handling_tools project root directory:
cd trap_error_logs
trap_error_logs_filepath=$(pwd)
cp -r $trap_error_logs_filepath /home/dani/Work/Work-Projects/_tmp/sample_project
cd /home/dani/Work/Work-Projects/_tmp/sample_project/trap_error_logs
cp -r $trap_error_logs_filepath /home/dani/Work/Work-Projects/_tmp/sample_project
```

Change the env vars in the template .env file:
```
local_trap_error_logs_filepath=$(pwd)

sed -i "s|^TRAP_ERROR_LOGS_MAIN_EXEC=.*|TRAP_ERROR_LOGS_MAIN_EXEC=$local_trap_error_logs_filepath/main.sh|" .env

sed -i "s|^TRAP_ERROR_LOGS_FILEPATH=.*|TRAP_ERROR_LOGS_FILEPATH=$local_trap_error_logs_filepath/error_logs.json|" .env

sed -i "s|^BASH_ERROR_LOGS_FILEPATH=.*|BASH_ERROR_LOGS_FILEPATH=$local_trap_error_logs_filepath/bash_errors.log|" .env

# _________________________________

# bash ../../tests/test_script.sh
