#!/bin/bash

~/git/DevSecOps/git/status-all.sh

# status everything under the ~/git folder
pushd ~/git > /dev/null;

read -r -p "Are you sure? [y/N] " response

if [[ "${response}" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    for repo in $(ls); do 
    echo "--------------- ${repo} ----------------";
    pushd ~/git/${repo} > /dev/null;
    git reset --hard;
    popd > /dev/null; 
  done; 
fi;

popd > /dev/null;
