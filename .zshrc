#!/bin/bash

# load modules
zmodload zsh/parameter
autoload -Uz vcs_info
autoload -Uz colors && colors
autoload -Uz compinit && compinit



# Prompt config
setopt prompt_subst
precmd() {
    vcs_info
}
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats "%s:(%F{#eb6f92} %b%f)%m%F{#eb6f92}%u%f%F{#95b1ac}%c%f "
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' check-for-staged-changes true
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '*'
prompt_str=' %F{#ebbcba}%f  %F{#31748f}%2~%f ${vcs_info_msg_0_}$ '
PROMPT=$prompt_str


if [ ! -d "$HOME/repos/zsh-syntax-highlighting/" ]; then
    git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ./repos/
fi

# ALIAS
alias xampp="sudo /opt/lampp/xampp"

# PATH
export PATH=$HOME/.local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="$HOME/repos/zls/zig-out/bin:$PATH"


# SOURCE
source $HOME/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/vulkansdk/default/setup-env.sh
