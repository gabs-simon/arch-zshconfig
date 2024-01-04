function quit_zsh() {
  exit
}

zle -N quit_zsh

bindkey "^\\" quit_zsh
