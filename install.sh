#!/bin/zsh

# Zsh
if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
  git -C ~/.oh-my-zsh pull
fi

ln -F -s $PWD/.zshrc ~/.zshrc
if [ ! -f ~/.zshrc-personal ]; then
  ln -s $PWD/.zshrc-personal ~/.zshrc-personal
fi

ln -F -s $PWD/voxsim.zsh-theme ~/.oh-my-zsh/themes/voxsim.zsh-theme

# Tmux
ln -F -s $PWD/.tmux.conf ~/.tmux.conf

if [ ! -d ~/.tmux/plugins/tpm ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
  git -C ~/.tmux/plugins/tpm pull
fi
