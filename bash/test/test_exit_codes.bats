#!/bin/bash

# Fail Test
@test 'exit_code_failure()' {

    # Given - misspelled help
    local expected=1;
    local test_param=100;

    # Then
    run ~/git/DevSecOps/bash/src/exit_codes.sh $test_param;
    local actual=${status};

    # Assert
    [ ${actual} -eq ${expected} ];
}

# Success Test
@test 'exit_code_success()' {

    # Given
    local expected=0;
    local test_param=0;

    # Then
    run ~/git/DevSecOps/bash/src/exit_codes.sh ${test_param};
    local actual=${status};

    # Assert
    [ ${actual} -eq ${expected} ];
}