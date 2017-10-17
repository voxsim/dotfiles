export GOPATH=$HOME/gopath

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.bin:$GOPATH/bin"
export EDITOR='nvim'
export DISABLE_AUTO_TITLE=true

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug junegunn/fzf, use:"shell/{completion,key-bindings}.zsh"
zplug plugins/git,   from:oh-my-zsh
zplug "b4b4r07/emoji-cli"
zplug b4b4r07/enhancd, use:init.sh

ENHANCD_FILTER=fzf
export ENHANCD_FILTER

zplug load --verbose

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
