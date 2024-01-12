My zsh config for setting up a nice looking Unix terminal from scratch.

## Requirements

- [zsh](https://github.com/zsh-users/zsh)
- [starship](https://github.com/starship/starship)
- [nvim](https://github.com/neovim/neovim)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [thefuck](https://github.com/nvbn/thefuck)
- [neofetch](https://github.com/dylanaraps/neofetch)
- A nerd font (I recommend [Geist Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/GeistMono) or [Fira Code](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode).)

## Installation

1. Clone this repo
```
git clone https://github.com/gabs-simon/arch-zshconfig.git ~/arch-zshconfig
```

3. Discard your current `~/.config` (if applicable) and make this repo your new `.config` folder

```
mv ~/.config ~/.config.prev
mv ~/arch-zshconfig ~/.config
```

3. Update your `~/.zshrc`

```
echo "source ~/.config/zsh/main.sh" >> ~/.zshrc
```
