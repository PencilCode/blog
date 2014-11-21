#!/bin/sh

GIT="/usr/bin/git"
NPM="/usr/local/bin/npm"
DIR="$( cd "$( dirname "$0" )/.." && pwd )"
cd $DIR
pwd
$GIT stash -u
$GIT checkout master
$GIT pull
$NPM run generate
