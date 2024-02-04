#!/bin/bash
# unofficial strict mode http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

if [[ ! $# -eq 0 ]]; then
    echo "Moving files to $1"
    echo "Project name is $(basename $1)"
    cp -r content/. $1
    sed -i "s/REPLACE_ME_WITH_PROJECT/$(basename $1)/g" $1/Makefile
else
    echo "Give file destination path as the first positional argument"
fi