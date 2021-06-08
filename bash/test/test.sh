#!/bin/bash

# source ./fail.sh;
# 
# echo "Issue fail code before next run";
# fail;

source ./check_last_exit_code.sh;

echo "Checking last exit code";
check_last_exit_code;