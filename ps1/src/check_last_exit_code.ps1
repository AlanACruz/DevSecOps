Function check_last_exit_code () {

    # Get last exit code via $?
    $local:last_exit_code=$?;
    Write-Host "Last Exit Code: " $last_exit_code;
    
    if [ $last_exit_code -eq 0 ]
    then
        # Success
        exit;
    else
        # Exit other then 0
        $local:new_exit_code = 1
        $host.SetShouldExit($new_exit_code)
        exit ;
    fi
}