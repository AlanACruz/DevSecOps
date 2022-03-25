#!/bin/bash

mkdir -p ~/git

pushd ~/git

curl "https://api.github.com/users/AlanACruz/repos?page=$PAGE&per_page=100" |
  grep -e 'git_url*' |   
  cut -d \" -f 4 |
  xargs -L1 git clone

popd
