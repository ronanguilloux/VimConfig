#!/bin/bash

cd ~/workspace/GITHUB/VimConfig
cp ~/.vim/* . -R
cp ~/.vimrc .

echo 'Please comment your commit:'
read COMMIT_MSG

git add .vim
git add .vimrc
git add *
git commit -m "$COMMIT_MSG"
git push origin master
echo 'done.'
