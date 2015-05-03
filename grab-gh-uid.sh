#!/bin/bash

touch gh-users.json

for FOO in karlstolley profstolley avelazq1 dtoppel huesitos jhignight jsilva4 kscom381zk mfreema5 nsoparaw sburnet1 sicueft thedanmartin YishanHuang
do
  curl "https://api.github.com/users/${FOO}"  >> gh-users.json
  echo "" >> gh-users.json
done
