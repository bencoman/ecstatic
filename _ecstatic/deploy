#!/bin/bash -x

SCRIPT_FOLDER=`dirname $0`

# Configuration file expected in content folder, one up from this script
# sets SOURCE_BRANCH & TARGET_BRANCH
source $SCRIPT_FOLDER/../deploy.conf

# Store unsaved work for later restore
git stash
CURRENT_BRANCH=`git symbolic-ref --short HEAD`

# Get the hash of the source commit 
git checkout $SOURCE_BRANCH
SOURCE_COMMIT=`git rev-parse --short HEAD`

# Change to target branch and clean it out
git checkout $TARGET_BRANCH
git rm -rf *

# Copy of _site folder of source branch to root folder of target branch
git checkout $SOURCE_BRANCH -- _site
mv _site/* .
rm -r _site

# Commit and push to target branch
git add *
git commit -m "Deployed from $SOURCE_BRANCH ($SOURCE_COMMIT)"
git push

# Restore previous working
git checkout $CURRENT_BRANCH
git stash pop
