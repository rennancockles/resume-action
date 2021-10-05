#!/bin/sh -l

if [ -d $INPUT_DIRECTORY ] ; then
  cp $INPUT_DIRECTORY/* /app/src/data
else
  echo "$INPUT_DIRECTORY is not a valid directory"
  exit 1
fi

cd /app

yarn build

cd /github/workspace

git checkout --orphan gh-pages
cp -r /app/dist/* ./

if [ $INPUT_CNAME ] ; then
  echo "Writing CNAME to file: $INPUT_CNAME"
  echo $INPUT_CNAME > CNAME
else
  echo "Skipping CNAME not provided"
fi

git add .
git commit -m "Publishing Resume ($GITHUB_RUN_NUMBER)."
git push origin gh-pages -f


# git init
# git config --global user.email r3ck.dev@gmail.com
# git config --global user.name "Rennan Cockles"
# git remote add origin https://$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git
# git checkout -b gh-pages
# git add .
# git commit -m "Publishing Resume ($GITHUB_RUN_NUMBER)."
# git push origin gh-pages -f