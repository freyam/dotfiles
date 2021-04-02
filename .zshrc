autoload -U colors && colors

setopt HIST_IGNORE_SPACE

ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"
plugins=(git vscode zsh-autosuggestions)

DEFAULT_USER=freyam

alias python='python3'
alias time='/usr/bin/time'

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
source /home/freyam/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.nvm/nvm.sh

fpath=($fpath "/home/freyam/.zfunctions")