#!/usr/bin/env bash

hugo 
git add .
git commit -m "update"
git push origin master
git push origin main
git subtree push --prefix public origin gh-pages
