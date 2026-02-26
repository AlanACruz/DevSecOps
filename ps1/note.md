# Powershell Guide

## Pull PowerShell image
```
docker pull mcr.microsoft.com/powershell:latest
```

## Run PowerShell Unit Test from container
```
cd ~/git/DevSecOps

docker build --tag "pester-test" -f ~/git/DevSecOps/ps1/docker/pester.Dockerfile .

docker run -i -t "pester-test"
```

## Run Powershell Tests Locally
Install Pester NuGet Package
> Not sure if these installs are is required on a windows machine
```
Install-PackageProvider NuGet -Force <br>
Install-module -Name Pester -Force 
```

To run unit tests, just Invoke-Pester
```
Invoke-Pester
```