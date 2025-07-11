#!/usr/bin/env bash

cd ~ || exit

# Update system
yay

# Install necessary packages
sudo pacman -S \
  easyeffects \
  fd \
  fzf \
  github-cli \
  go \
  interception-caps2esc \
  lazygit \
  less \
  npm \
  telegram-desktop \
  unzip

# Install AUR packages
yay -S ani-cli bun-bin zen-browser-bin

# Git configuration

## Authenticate GitHub CLI
gh auth login

## Refresh GitHub CLI token for octo.nvim
# gh auth refresh -s read:project

## Clone all repositories from GitHub user
mkdir -p Repos/iamharshdabas
cd Repos/iamharshdabas || exit
gh repo list iamharshdabas --json nameWithOwner --jq '.[].nameWithOwner' | xargs -I {} gh repo clone {}
cd ~ || exit

## Set global Git configuration
git config --global user.email "iamharshdabas@gmail.com"
git config --global user.name "Harsh Dabas"
git config --global core.editor "nvim"
git config --global init.defaultBranch main
git config --global pull.rebase true

# Setup configuration files

## Create symlink for nvim configuration
ln -s ~/Repos/iamharshdabas/nvim/ ~/.config/nvim

## Setup caps2esc
sudo cp Repos/iamharshdabas/linux/caps2esc/udevmon.yaml /etc/
sudo cp Repos/iamharshdabas/linux/caps2esc/udevmon.service /etc/systemd/system/
sudo systemctl enable --now udevmon.service

echo '-------------------------'
echo "Please update hyde config"
echo '-------------------------'

exit

rm .local/share/waybar/layouts/hyprdots/17.jsonc .config/hyde/config.toml .config/hypr/keybindings.conf
ln -s ~/Repos/iamharshdabas/linux/hyde/17.jsonc ~/.local/share/waybar/layouts/hyprdots/17.jsonc
ln -s ~/Repos/iamharshdabas/linux/hyde/config.toml ~/.config/hyde/config.toml
ln -s ~/Repos/iamharshdabas/linux/hyde/keybindings.conf ~/.config/hypr/keybindings.conf
