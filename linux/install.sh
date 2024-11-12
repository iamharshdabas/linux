#!/usr/bin/env bash

# Update system
paru

# Install packages
sudo pacman -S ttf-firacode-nerd github-cli fd fzf lazygit unzip npm telegram-desktop neovide interception-caps2esc
paru zen-browser-bin

# Git

## First auth Github Cli

gh auth login

### for [octo.nvim](https://github.com/pwntester/octo.nvim)

gh auth refresh -s read:project

## Get all of your Repos

mkdir Repos
cd Repos || exit
gh repo list iamharshdabas --json nameWithOwner --jq '.[].nameWithOwner' | xargs -I {} gh repo clone {}
cd ~ || exit

## Set up git

git config --global user.email "iamharshdabas@gmail.com"
git config --global user.name "Harsh Dabas"
git config --global core.editor "nvim"
git config --global init.defaultBranch main

# Setup config

# nvim symlink
ln -s ~/Repos/nvim/ ~/.config/nvim

# kitty
rm .config/kitty/kitty.conf
cp Repos/stuff/linux/kitty/* .config/kitty/

# hypr
rm .config/hypr/userprefs.conf .config/hypr/keybindings.conf .config/hypr/monitors.conf
cp Repos/stuff/linux/hypr/* .config/hypr/

# caps2esc
sudo cp Repos/stuff/linux/caps2esc/udevmon.yaml /etc/
sudo cp Repos/stuff/linux/caps2esc/udevmon.service /etc/systemd/system/
sudo systemctl enable --now udevmon.service
