#!/usr/bin/env sh

git add -A
if git diff-index --quiet HEAD ; then
  echo "No changes detected"
else
  git commit -m "scheduled backup"
  git push
fi
git gc
