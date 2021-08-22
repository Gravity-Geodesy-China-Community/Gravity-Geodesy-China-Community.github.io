#!/usr/bin/env bash

hugo 
git add .
git commit -m "update"
git push origin master
git push origin main
>>>>>>> ffbb8741667b1f934f5841cf751193f93e51abb3
git subtree push --prefix public origin gh-pages
