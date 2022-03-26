#!/bin/bash

# Create directory if it doesn't exist
mkdir -p ~/git;

# Switch to ~/git folder
pushd ~/git > /dev/null;

# Curl GitHub API for URLs
repo_list=$(curl "https://api.github.com/users/AlanACruz/repos" |
  grep -e 'ssh_url*' |   
  cut -d \" -f 4);

# Clone Loop
for repo in ${repo_list}; 
do 
  echo "--------------- ${repo} ----------------";
  git clone ${repo};
done; 

# Switch folder back
popd > /dev/null;
