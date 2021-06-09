#!/bin/bash

# echo "Issue fail code before next run";
# source ./fail.sh;
# fail;

echo "Checking last exit code";
source ../src/check_last_exit_code.sh;
check_last_exit_code;