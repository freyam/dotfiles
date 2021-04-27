autoload -U colors && colors

setopt HIST_IGNORE_SPACE

ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"
plugins=(git vscode zsh-autosuggestions you-should-use)

DEFAULT_USER=freyam

alias python='python3'
alias time='/usr/bin/time'
alias vpn='openvpn --config /home/freyam/vpn/ubuntu.ovpn'

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
source /home/freyam/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.nvm/nvm.sh

fpath=($fpath "/home/freyam/.zfunctions")
