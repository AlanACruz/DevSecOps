#!/bin/bash

# Fail Test
~/git/DevSecOps/bash/src/standard_header.sh "Using misspelled 'ls --helpa'"

ls --helpa
last_exit_code=$?

echo "first last exit code: " $last_exit_code
~/git/DevSecOps/bash/src/exit_codes.sh $last_exit_code

# Pass Test
~/git/DevSecOps/bash/src/standard_header.sh "Reseting exit code with 'ls -a'"

ls -a
last_exit_code=$?

echo "second last exit code: " $last_exit_code
~/git/DevSecOps/bash/src/exit_codes.sh $last_exit_code