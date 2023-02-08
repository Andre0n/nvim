# Neovim Simple
My basic neovim config. Follow the instructions to install.

## Pre-requisites
- You should be an existing vim user or keen to learn nvim.
- [Neovim 0.8.3](https://neovim.io/)
- use a nerd font in your terminal emulator. i like [that](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/iosevka.zip)

## Install

### Linux / MacOS (unix)
```sh
git clone https://github.com/Andre0n/nvim ~/.config/nvim --depth 1 && nvim
```
### Windows
```sh
git clone https://github.com/Andre0n/nvim $home\appdata\local\nvim --depth 1 && nvim
```
## Uninstall
```
# linux/macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

# windows
rd -r ~\appdata\local\nvim
rd -r ~\appdata\local\nvim-data
```
