if [[ ! -f ~/.tmux/oh-my-tmux/.tmux.conf ]]; then
  git clone https://github.com/gpakosz/.tmux.git ~/.tmux/oh-my-tmux
  ln -s ~/.tmux/oh-my-tmux/.tmux.conf ~/.config/tmux/tmux.conf
fi

