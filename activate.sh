#!/bin/bash

set -e

dotfiles_dir=$(cd "$(dirname "$0")"; pwd)

for name in vim vimrc gvimrc vimrc.bundles; do
  echo $name
  echo "removing ${HOME}/.${name}"
  rm -rf "${HOME}/.${name}"
  ln -s "${dotfiles_dir}/${name}" "${HOME}/.${name}"
done

vim +PlugInstall +PlugClean! +qall
