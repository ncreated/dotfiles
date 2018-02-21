#!/bin/bash
cd $1

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [[ "$CURRENT_BRANCH" != "develop" ]]; then
  echo 'You should call this action when being on develop branch';
  exit 1;
fi

git branch --merged | grep -v "\*" | grep -v "develop" | grep -v "master" | xargs git branch -d
