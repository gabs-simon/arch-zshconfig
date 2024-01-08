alias cd='z';
alias refresh='source ~/.zshrc';
alias show_path='echo $PATH';
alias ls='lsd';
alias vi='nvim';
alias vim='nvim';

alias pbcopy="/mnt/c/Windows/System32/clip.exe";
alias pbpaste="/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -command Get-Clipboard";
alias explorer="/mnt/c/Windows/explorer.exe";

# mkcd is equivalent to takedir
function mkcd takedir() {
  mkdir -p $@ && cd ''${@:$#}
}

eval $(thefuck --alias)

function set-gabs() {
  ssh-add -D
  ssh-add ~/.ssh/id_gabs
}

function set-is() {
  ssh-add -D
  ssh-add ~/.ssh/id_is
}

# downloads and extracts a tarball
function taketar() {
  local data thedir
  data="$(mktemp)"
  curl -L "$1" > "$data"
  tar xf "$data"
  thedir="$(tar tf "$data" | head -n 1)"
  rm "$data"
  cd "$thedir"
}

# clones a git repository and cd's into it
function takegit() {
  git clone "$1"
  cd "$(basename ''${1%%.git})"
}

function takeFile() {
  wget "$1"
}

function take() {
  if [[ $1 =~ ^(https?|ftp).*\.(tar\.(gz|bz2|xz)|tgz)$ ]]; then
    taketar "$1"
  elif [[ $1 =~ ^([A-Za-z0-9]\+@|https?|git|ssh|ftps?|rsync).*\.git/?$ ]]; then
    takegit "$1"
  elif [[ $1 =~ ^(https?).*$ ]]; then
    takefile "$1"
  else
    takedir "$@"
  fi
}
