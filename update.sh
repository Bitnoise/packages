#!/bin/sh

git pull
vendor/bin/satis build
git add .
git commit -m "update"
git push
