#!/bin/bash

# ShellCheck is a static analysis tool that can be used for bash code linting

# `shellcheck /home/dani/Work/Work-Projects/error_handling_tools/shellcheck_testing/shellcheck_test.sh`

# Sample code:
sayHello="Hello,"

function welcome_msg {
  local myName="$USER"
  echo $sayHello $myName
}

${welcome_msg} && echo How are you today?

grep [aeiou]sh $HOME/.bashrc