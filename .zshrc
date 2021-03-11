autoload -U colors && colors

setopt HIST_IGNORE_SPACE

ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions)

DEFAULT_USER=freyam

bk() {
	cp -a "$1" "${1}_$(date --iso-8601=seconds)"
}

extract() {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xjf $1		;;
			*.tar.gz)	tar xzf $1		;;
			*.bz2)		bunzip2 $1		;;
			*.rar)		rar x $1		;;
			*.gz)		gunzip $1		;;
			*.tar)		tar xf $1		;;
			*.tbz2)		tar xjf $1		;;
			*.tgz)		tar xzf $1		;;
			*.zip)		unzip $1		;;
			*.Z)		uncompress $1	;;
			*)			echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

mcd() { 
    mkdir -p $1;
    cd $1 
}

gitall() {
    git add .
    if [ "$1" != "" ]
    then
        git commit -m "$1"
    else
        git commit -m update
    fi
    git push
}

alias python='python3'

source $ZSH/oh-my-zsh.sh
source ~/.zsh_aliases
source /home/freyam/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.nvm/nvm.sh
