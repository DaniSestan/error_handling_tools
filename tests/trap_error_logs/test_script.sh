#!/bin/bash

source .env
source $TRAP_ERROR_LOGS_MAIN_EXEC

ls /foo
ls /foo/bar
ls /foo/bar/baz