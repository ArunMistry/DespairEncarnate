#!/usr/bin/env sh

# abort on errors
set -e

# commit changes to master
git add -A
git commit -m 'Changes'
git push

# build website
npm run build

# move into the build output directory
cd dist

# commit changes of dist
git init
git add -A
git commit -m 'Deploy Website'

# Push the website to gh-pages
git push -f git@github.com:RhindorOP/DespairEncarnate.git master:gh-pages


# remove dist folder
cd -
rm -rf dist