#!/bin/bash

# pull everything under the ~/git folder
pushd ~/git; 

for repo in $(ls); do 
  pushd ${repo}
  git pull
  popd; 
done; 

popd
