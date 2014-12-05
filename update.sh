#!/bin/sh

GIT="$(which git)"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GITDIR="$DIR/.git"

# cd $DIR

$GIT --git-dir=$GITDIR pull
# $DIR/vendor/bin/satis build
$GIT --git-dir=$GITDIR add $DIR
$GIT --git-dir=$GITDIR commit -m "update"
$GIT --git-dir=$GITDIR push
