bindkey -v
export EDITOR="vim"

if [ $(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip') ]; then
  autoload zkbd
  source ~/.zkbd/xterm-256color-:0

  [[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
  [[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
  [[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
  [[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
  [[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
  [[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
  [[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
  [[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
  [[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
  [[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
  [[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char
fi

source ~/.config/broot/launcher/bash/br

# Aliases
source ~/.config/zsh/aliases.sh

# Paths
source ~/.config/zsh/paths.sh

# Completions
source ~/.config/zsh/completions.sh

# Install plugins
source ~/.config/zsh/plugins.sh


# fixes duplication of commands when using tab-completion
PS1='[\u@\h \W]\$ '

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
