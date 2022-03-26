#!/bin/bash

# Switch to ~/git folder
pushd ~/git > /dev/null;

# Pull Loop
for repo in $(ls); 
do 
  echo "--------------- ${repo} ----------------";
  pushd ~/git/${repo} > /dev/null;
  git pull --all;
  popd > /dev/null; 
done; 

# Switch folder back
popd > /dev/null;
