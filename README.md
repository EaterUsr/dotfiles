# dotfiles

## Requirements

packages:
- git
- gh
- stow
- starship
- fish
- nvim ()
- tmux
- tpm

font: [JetBrains Mono Nerd Font](https://www.nerdfonts.com/font-downloads)
windows terminal theme: [catpuccin (mocha)](https://github.com/catppuccin/windows-terminal)

## Installation

Clone repos:
```bash
gh repo clone EaterUsr/dotfiles
```
```bash
gh repo clone EaterUsr/nvim-config
```

Install config with stow:
```bash
stow -t ~/.config dotfiles
```
```bash
stow -t ~/.config/nvim nvim-config
```

Update config:
```bash
fish ~/dotfiles/install.fish
```
