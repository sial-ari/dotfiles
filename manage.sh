#!/bin/bash

shopt -s dotglob

function update {

  git pull
  git submodule init
  git submodule update

  # link files into $HOME
  for file in .*; do
    if [[ $file != "." && $file != ".." && $file != ".gitmodules" && $file != "awesome" && $file != ".git" ]]; then
      echo "$file"
      ln -s "$(pwd)/$file" "$HOME/$file"
    elif [[ $file == 'awesome' ]];then
        echo "$file"
        ln -s "$(pwd)/$file" "$HOME/.config/$file"
    fi
  done
  
  # link antigen.zsh
  ln -s "$(pwd)/antigen/antigen.zsh" "$HOME/.antigen.zsh"

}

echo "Linking dotfiles into $HOME!" 
update

