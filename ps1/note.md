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
Note sure if this is required
> Install-PackageProvider NuGet -Force
> Install-module -Name Pester -Force 
```
Invoke-Pester
```