#!/bin/bash

# Status All first for Safety
~/git/DevSecOps/git/status-all.sh

# Confirm
read -r -p "Are you sure? [y/N] " response

# Switch to the ~/git folder
pushd ~/git > /dev/null;

# Reset Loop
if [[ "${response}" =~ ^([yY][eE][sS]|[yY])$ ]]
then
  for repo in $(ls); 
  do 
    echo "--------------- ${repo} ----------------";
    pushd ~/git/${repo} > /dev/null;
    git reset --hard;
    popd > /dev/null; 
  done; 
fi;

# Switch folder back
popd > /dev/null;
