#!/bin/sh -l

if [[ ! -f $INPUT_RESUME_FILE ]] ; then
  echo "$INPUT_RESUME_FILE does not exist"
  exit 1
fi

cp $INPUT_RESUME_FILE /app

cd /app

/app/.venv/bin/python resume_generator /app/$INPUT_RESUME_FILE

git config --global --add safe.directory /github/workspace
git config --global user.email r3ck.dev@gmail.com
git config --global user.name "Rennan Cockles"

cd /github/workspace

git checkout --orphan gh-pages
git rm -rf .

cp -r /app/output/* ./

if [ $INPUT_CNAME ] ; then
  echo "Writing CNAME to file: $INPUT_CNAME"
  echo $INPUT_CNAME > CNAME
else
  echo "Skipping CNAME not provided"
fi

git add .
git commit -m "Publishing Resume ($GITHUB_RUN_NUMBER)."
git push origin gh-pages -f
