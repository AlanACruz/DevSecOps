#!/bin/bash

function check_last_exit_code () {

    # Get last exit code via $?
    local last_exit_code=$?;
    echo "Last Exit Code: " $last_exit_code;
    
    if [ $last_exit_code -eq 0 ]
    then
        # Success
        exit 0;
    else
        # Exit other then 0
        exit 1;
    fi
}