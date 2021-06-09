#!/bin/bash
exit_codes_last_exit_code=100;

function issue_exit_code_success () {

    echo "Issue exit code: 0" >&2 ;
    exit 0;
}

function issue_exit_code_fail () {

    echo "Issue exit code: 1" >&2 ;
    exit 1;
}

function check_last_exit_code () {

    # Get last exit code via $?
    # echo $?
    # exit_codes_last_exit_code=$?;
    # echo "Last exit code was: " >&2 ;
    # echo $last_exit_code;
    # echo 10  

    exit_codes_last_exit_code=$1;
    echo "check" $exit_codes_last_exit_code
}

function redirect_last_exit_code () {

    # Get last exit code via $?
    # local exit_val=check_last_exit_code;
    #ocal exit_val=$(check_last_exit_code)

    #echo "exit val: $exit_val"

    check_last_exit_code $1

    echo "redi" $exit_codes_last_exit_code

    if [[ $exit_codes_last_exit_code == "0" ]] 
    then
        # Success
        issue_exit_code_success;
    else
        # Exit code was something other then 0
        issue_exit_code_fail;
    fi
}

