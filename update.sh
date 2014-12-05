#!/bin/sh

GIT="$(which git)"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GITDIR="$DIR/.git"

# pull latest changes from repo
$GIT --git-dir=$GITDIR --work-tree=$DIR pull

# update packages
$DIR/vendor/bin/satis build $DIR/satis.json $DIR

# push changes to repo
$GIT --git-dir=$GITDIR --work-tree=$DIR add --verbose .
$GIT --git-dir=$GITDIR commit -m "update"
$GIT --git-dir=$GITDIR push
