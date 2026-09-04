#!/usr/bin/env bash

cd ~ || exit

# Install necessary packages
sudo pacman -S \
  bun \
  github-cli \
  go \
  keyd \
  lazygit \
  neovide \
  npm \
  tokei \
  yazi

# Git configuration

## Authenticate GitHub CLI
gh auth login

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

## Setup nvim
ln -s ~/Repos/iamharshdabas/linux/nvim/ ~/.config/nvim

## Setup keyd
sudo systemctl enable keyd --now
sudo mkdir /etc/keyd
sudo cp ~/Repos/iamharshdabas/linux/keyd/default.conf /etc/keyd
sudo keyd reload
