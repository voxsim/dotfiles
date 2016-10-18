# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DISABLE_UPDATE_PROMPT=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux tmuxinator)

export GOPATH=$HOME/gopath

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.bin:$GOPATH/bin"
export EDITOR='nvim'
export DISABLE_AUTO_TITLE=true

source $ZSH/oh-my-zsh.sh

source ~/.zshrc-personal
source ~/.zshrc-aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
