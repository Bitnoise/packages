#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR

git pull
vendor/bin/satis build
git add .
git commit -m "update"
git push
