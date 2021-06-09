#!/bin/bash

# Import
source ~/git/DevSecOps/bash/src/exit_codes.sh;

echo "Checking last exit code";
redirect_last_exit_code $?; 

# echo "Checking last exit code";
# issue_exit_code_success;

# echo "Issuing exit code - fail";
# issue_exit_code_fail;