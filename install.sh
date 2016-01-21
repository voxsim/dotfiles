#!/bin/zsh

ln -F -s $PWD/.tmux.conf ~/.tmux.conf

ln -F -s $PWD/.zshrc ~/.zshrc
if [ ! -f ~/.zshrc-personal ]; then
  ln -s $PWD/.zshrc-personal ~/.zshrc-personal
fi

ln -F -s $PWD/voxsim.zsh-theme ~/.oh-my-zsh/themes/voxsim.zsh-theme
