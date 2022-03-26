#!/bin/bash

mkdir -p ~/git;

pushd ~/git  > /dev/null;

curl "https://api.github.com/users/AlanACruz/repos" |
  grep -e 'git_url*' |   
  cut -d \" -f 4 |
  xargs -L1 git clone;

popd  > /dev/null;
