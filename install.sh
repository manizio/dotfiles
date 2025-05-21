#!/bin/bash

DOTFILES="$HOME/dotfiles/"


echo "Installing dependencies"

sudo apt update
sudo apt install google-chrome-stable neovim flameshot i3 i3blocks git tmux feh picom ripgrep fd-find rofi ttf-droid-fallback fonts-font-awesome zsh fonts-powerline

# nodejs npm & gcc

curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - && sudo apt-get install -y nodejs
sudo apt install nodejs npm gcc

echo "Downloading oh-my-zsh"

git clone https://github.com/cbudjan/oh-my-zsh-setup.git ~/.oh-my-zsh

echo "Creating Symbolic Links"
# creating symbolic links to $home stuff
ln -sf $DOTFILES/zsh/.zshrc ~/
ln -sf $DOTFILES/zsh/aliases.zsh ~/.oh-my-zsh/custom/
ln -sf $DOTFILES/.tmux.conf ~/

# creating symbolic links to .config stuff
ln -sf $DOTFILES/i3 ~/.config/
ln -sf $DOTFILES/i3blocks ~/.config/
ln -sf $DOTFILES/nvim ~/.config/
ln -sf $DOTFILES/scripts ~/.config/
ln -sf $DOTFILES/rofi ~/.config/
ln -sf $DOTFILES/toggletouchpad.sh ~/.config/

# setting rofis theme
ln -sf $DOTFILES/rofi/themes/gruvbox-dark-hard.rasi /usr/share/rofi/themes/

ln -sf $DOTFILES/google-chrome-incognito /usr/bin

