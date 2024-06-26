My zsh config for setting up a nice looking Unix terminal from scratch.

## Requirements

- `gcc`, `make` and `cmake` for native fzf on nvim
- [tmux](https://github.com/tmux/tmux/wiki)
- [tpm](https://github.com/tmux-plugins/tpm) (to be installed on `~/tmux/plugins`)
- [zsh](https://github.com/zsh-users/zsh)
- [starship](https://github.com/starship/starship)
- [nvim](https://github.com/neovim/neovim)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [thefuck](https://github.com/nvbn/thefuck)
- [lsd](https://github.com/lsd-rs/lsd)
- A nerd font (I recommend [Geist Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/GeistMono) or [Fira Code](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode).)

## Installation

### From scratch on empty Arch installation as root
- [Copy and paste the code from install.sh](https://raw.githubusercontent.com/gabs-simon/arch-zshconfig/main/install.sh)
- Run `setup_main $username $password`, replacing $username and $password with the username and password to create

### On any other installation

- Set your Terminal app to use the installed Nerd Font.
- Clone this repo
```
git clone https://github.com/gabs-simon/arch-zshconfig.git ~/arch-zshconfig
```

- Discard your current `~/.config` (if applicable) and make this repo your new `.config` folder

```
mv ~/.config ~/.config.prev
mv ~/arch-zshconfig ~/.config
```

- Update your `~/.zshrc`

```
echo "source ~/.config/zsh/main.sh" >> ~/.zshrc
```
## Colorscheme

The colorscheme used by this setup is [Kanagawa](https://github.com/rebelot/kanagawa.nvim). Check the [extras folder on the Kanagawa repo](https://github.com/rebelot/kanagawa.nvim/tree/master/extras) for colorschemes to your Terminal app.
