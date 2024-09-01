# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

if [ -f $ZSH/oh-my-zsh.sh ]; then
    source $ZSH/oh-my-zsh.sh
fi

# User configuration

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable autosuggestions
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UFT-8

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# ls
alias ll="ls -l"
alias la="ls -lA"
alias l="ls -CF"

alias c="clear"

# Docker
alias dcup='docker-compose up -d'
alias dcdown='docker-compose down'
alias dcstart='docker-compose start'
alias dcstop='docker-compose stop'
alias dcre='docker-compose restart'
alias dcbuild='docker-compose build'
alias dcsh='f() {if type "docker exec -it ${1} bash -" > /dev/null; then docker exec -it $1 bash -; else docker exec -it $1 sh -; fi};f'
