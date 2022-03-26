#!/bin/bash

# pull everything under the ~/git folder
pushd ~/git  > /dev/null;

for repo in $(ls); do 
  echo "----- ${repo} ------";
  pushd ~/git/${repo} > /dev/null;
  git pull;
  popd  > /dev/null; 
done; 

echo "----------------------------------------";
popd  > /dev/null;
