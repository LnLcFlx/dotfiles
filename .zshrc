export PATH=$HOME/.scripts/:$PATH
export SHELL=/bin/zsh

setopt autocd
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

bindkey -v

alias vi=nvim
alias vim=nvim
alias ls=lsd

source ~/.promptline.sh


###
source /usr/share/zsh/share/antigen.zsh

antigen bundle git
antigen bundle archlinux
antigen bundle pip
antigen bundle fzf
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen apply
###
