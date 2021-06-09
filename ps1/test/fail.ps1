Function fail {

    Write-Host "Issue exit code 10."
    $local:new_exit_code = 10
    $host.SetShouldExit($new_exit_code)
    exit;
}