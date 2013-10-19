#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

rsync --exclude ".git/" --exclude ".DS_Store" \
      --exclude "install.sh" --exclude "README.md" -av --no-perms . ~

source ~/.bashrc
