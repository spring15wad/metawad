#!/bin/bash

touch gh-users.json

#for FOO in karlstolley profstolley avelazq1  huesitos  jhignight  mfreema5  nsoparaw  sicueft  thedanmartin  YishanHuang
for FOO in sburnet1 kscom381zk jsilva4 dtoppel
do
  curl "https://api.github.com/users/${FOO}"  >> gh-users.json
  echo "" >> gh-users.json
done
