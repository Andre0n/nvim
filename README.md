# neovim brabo
basic neovim config.

# pre-requisites
- you should be an existing vim user or keen to learn nvim.
- neovim 0.7.2
- use a nerd font in your terminal emulator. i like [that](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/iosevka.zip)

# install
## linux / macos (unix)
```sh
git clone https://github.com/Andre0n/nvim ~/.config/nvim --depth 1 && nvim
```
## windows
```sh
git clone https://github.com/Andre0n/nvim $home\appdata\local\nvim --depth 1 && nvim
```
# uninstall
```
# linux/macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

# windows
rd -r ~\appdata\local\nvim
rd -r ~\appdata\local\nvim-data
```
