# FROM mcr.microsoft.com/windows:20H2

FROM mcr.microsoft.com/powershell:latest

ADD . /root/git/DevSecOps

ENTRYPOINT ["/root/git/DevSecOps/ps1/docker/pester.Entrypoint"]