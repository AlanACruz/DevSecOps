FROM mcr.microsoft.com/powershell:latest

ADD . /root/git/DevSecOps

ENTRYPOINT ["/root/git/DevSecOps/docker/pester.Entrypoint"]