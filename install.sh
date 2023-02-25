#!/bin/bash

cd ~/

curl -o .git-completion.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o .git-prompt.sh \
    https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

ln -fs ~/dotfiles/.bashrc .

mkdir -p ~/.config

ln -fs ~/dotfiles/nvim ~/.config/
