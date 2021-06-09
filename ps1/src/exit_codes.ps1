Function issue_exit_code_success {

    Write-Host "Issue exit code: 0";
    $local:new_exit_code = 0;
    $host.SetShouldExit($new_exit_code);
    exit;
}

Function issue_exit_code_fail {

    Write-Host "Issue exit code: 1";
    $local:new_exit_code = 1;
    $host.SetShouldExit($new_exit_code);
    exit;
}

Function check_last_exit_code () {

    # Get last exit code via $?
    $local:last_exit_code =$ ?;
    Write-Host "Last exit code was: " $last_exit_code;
    return last_exit_code;
}

Function redirect_last_exit_code () {

    $local:last_exit_code = check_last_exit_code;
    Write-Host "Last exit code was: " $last_exit_code;
    
    if ($last_exit_code -eq 0) {
        # Success
        issue_exit_code_success;
    } else {
        # Exit code was something other then 0
        issue_exit_code_fail;
    }
}