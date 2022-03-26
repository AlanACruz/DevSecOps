#!/bin/bash

# status everything under the ~/git folder
pushd ~/git > /dev/null;

for repo in $(ls); do 
  echo "--------------- ${repo} ----------------";
  pushd ~/git/${repo} > /dev/null;
  git status;
  popd > /dev/null; 
done; 

popd > /dev/null;
