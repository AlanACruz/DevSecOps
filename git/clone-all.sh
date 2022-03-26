#!/bin/bash

# Create directory if it doesn't exist
mkdir -p ~/git;

# Switch to ~/git folder
pushd ~/git > /dev/null;

# Curl GitHub API for URLs and Pass to Git Clone via Xargs
curl "https://api.github.com/users/AlanACruz/repos" |
  grep -e 'ssh_url*' |   
  cut -d \" -f 4 |
  xargs -L1 git clone;

# Switch folder back
popd > /dev/null;
