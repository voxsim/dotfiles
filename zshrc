# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR='nvim'
export DISABLE_AUTO_TITLE=true

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug junegunn/fzf, use:"shell/{completion,key-bindings}.zsh"
zplug plugins/git,   from:oh-my-zsh
zplug b4b4r07/emoji-cli
zplug b4b4r07/enhancd, use:init.sh
zplug voxsim/zsh-autoswitch-virtualenv

ENHANCD_FILTER=fzf
export ENHANCD_FILTER

VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source =virtualenvwrapper.sh

zplug load --verbose

# Check initial directory for any .venv file
check_venv

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
