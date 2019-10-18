#!/usr/bin/env bash

cd `dirname "$0"`
git checkout --orphan newBranch
git add -A  # Add all files and commit them
git commit
git branch -D master  # Deletes the master branch
git branch -m master  # Rename the current branch to master
git push -f --set-upstream origin master
git gc --aggressive --prune=all     # remove the old files
