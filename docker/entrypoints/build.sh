#!/bin/bash
# builds component output files

export NODE_ENV=${NODE_ENV:-production}

echo Building react app...

# now, build the app
cd /react
npm run build

cp ./src/images/favicon.ico README.md CNAME ./dist/

# when the build is ready to deploy, publish changes with:
# `git subtree push --prefix dist origin gh-pages`