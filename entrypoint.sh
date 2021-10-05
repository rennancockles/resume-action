#!/bin/sh -l

# yarn build

echo Entrando no diretorio
cd /app
echo Verificando diretorio atual
ls
echo Verificando /src/data
ls ./src/data


# cd dist

# git init
# git config --global user.email r3ck.dev@gmail.com
# git config --global user.name "Rennan Cockles"
# git remote add origin https://$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git
# git checkout -b gh-pages
# git add .
# git commit -m "Publishing Resume ($GITHUB_RUN_NUMBER)."
# git push origin gh-pages -f