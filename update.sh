#!/bin/sh

git pull
satis build
git add .
git commit -m "update"
git push
