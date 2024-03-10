#!/bin/bash

sudo apt update 

sudo apt install zsh
# chsh -s $(which zsh) // para hacerla default

# install omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Alacritty
git clone https://github.com/alacritty/alacritty.git
cd alacritty
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

# Rust install
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
cargo build --release # on alacritty/

# Desktop Entry
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

# Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
# make sure you have this on .zshrc export PATH="$PATH:/opt/nvim-linux64/bin"
#
# Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

