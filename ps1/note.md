# Powershell Guide

## Pull PowerShell image
```
docker pull mcr.microsoft.com/powershell:latest
```

## Run PowerShell test from container
```
cd ~/git/DevSecOps

docker build --tag "pester-test" -f ~/git/DevSecOps/docker/pester.Dockerfile .

docker run -i -t "pester-test"
```

## Run Powershell Tests Locally
> Not sure if these installs are is required on a windows machine <br>
> <br>
> Install-PackageProvider NuGet -Force <br>
> Install-module -Name Pester -Force 

To Run, just Invoke-Pester
```
Invoke-Pester
```