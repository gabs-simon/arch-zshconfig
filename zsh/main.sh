bindkey -v
export EDITOR="vim"

# Load windows-specific config
if [ $(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip') ]; then
  source ~/.config/zsh/windows.sh
fi

# Load macos-specific config
if [ $(uname | sed -n 's/.*\( *Darwin *\).*/\1/ip') ]; then
  source ~/.config/zsh/macos.sh
fi

# Paths
source ~/.config/zsh/paths.sh

# Aliases
source ~/.config/zsh/aliases.sh

# Completions
source ~/.config/zsh/completions.sh

# Install plugins
source ~/.config/zsh/plugins.sh

# Keep everything ffs
HISTSIZE=1000000
SAVEHIST=1000000

# fixes duplication of commands when using tab-completion
PS1='[\u@\h \W]\$ '

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
