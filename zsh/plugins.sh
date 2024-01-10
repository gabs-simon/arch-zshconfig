source ~/.config/zsh/tmux.sh

if [[ ! -f ~/.zpm/zpm.zsh ]]; then
  git clone --recursive https://github.com/zpm-zsh/zpm ~/.zpm
fi
source ~/.zpm/zpm.zsh

zpm load zsh-users/zsh-autosuggestions
zpm load zdharma-continuum/fast-syntax-highlighting

HISTDB_TABULATE_CMD=(sed -e $'s/\x1f/\t/g')

zpm load larkery/zsh-histdb
source ~/.zpm/plugins/larkery---zsh-histdb/sqlite-history.zsh
autoload -Uz add-zsh-hook

