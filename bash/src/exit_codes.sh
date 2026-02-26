#!/bin/bash

# Set from param
exit_code_param=${1};

echo "exit_code_param " ${exit_code_param};

if [ ${exit_code_param} -eq 0 ] 
then
    # Success
    exit 0;
else
    # Exit code was something other then 0
    exit 1;
fi