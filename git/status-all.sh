#!/bin/bash

# Status everything under the ~/git folder
pushd ~/git > /dev/null;

# Status Loop
for repo in $(ls); 
do 
  echo "--------------- ${repo} ----------------";
  pushd ~/git/${repo} > /dev/null;
  git status;
  popd > /dev/null; 
done; 

# Switch folder back
popd > /dev/null;
