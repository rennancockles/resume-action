#!/bin/sh -l

if [ -d $INPUT_DIRECTORY ] ; then
  cp $INPUT_DIRECTORY/* /app/src/data
else
  echo "$INPUT_DIRECTORY is not a valid directory"
  exit 1
fi

cd /app

yarn build

cd dist

git init
git config --global user.email r3ck.dev@gmail.com
git config --global user.name "Rennan Cockles"
git remote add origin https://$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git
git checkout -b gh-pages
git add .
git commit -m "Publishing Resume ($GITHUB_RUN_NUMBER)."
git push origin gh-pages -f