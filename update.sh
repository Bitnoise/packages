#!/bin/sh

git pull
satis/bin/satis build
git add .
git commit -m "update"
git push
