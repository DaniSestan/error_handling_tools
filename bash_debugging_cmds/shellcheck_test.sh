#!/bin/bash

# Sample code that can be debugged with shellcheck:
# `shellcheck /home/dani/Work/Work-Projects/error_handling_tools/shellcheck_testing/test.sh`

sayHello="Hello,"

function welcome_msg {
  local myName="$USER"
  echo $sayHello $myName
}

${welcome_msg} && echo How are you today?

grep [aeiou]sh $HOME/.bashrc