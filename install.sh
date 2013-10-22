#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

rsync --exclude ".git/" --exclude ".DS_Store" \
      --exclude "install.sh" --exclude "README.md" \
      --exclude "showColors.sh" -av --no-perms . ~

source ~/.bashrc
