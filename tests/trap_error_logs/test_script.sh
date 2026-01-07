#!/bin/bash

source .env
exec 2> >(tee -a $BASH_ERROR_LOGS >&2)
trap "source \"$TRAP_ERROR_LOGS_MAIN_EXEC\" \"$BASH_COMMAND\" \"$?\"" ERR

ls /foo/bar/baz/