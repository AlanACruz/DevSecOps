# Write-Host "Issue fail code before next run";
# . ./fail.ps1;
# fail;

Write-Host "Checking last exit code";
. ../src/check_last_exit_code.ps1;
check_last_exit_code;