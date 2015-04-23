#!/bin/bash

touch gh-users.json

for FOO in karlstolley profstolley avelazq1  huesitos  jhignight  mfreema5  nsoparaw  sicueft  thedanmartin  YishanHuang
do
  curl "https://api.github.com/users/${FOO}"  >> gh-users.json
  echo "" >> gh-users.json
done
