#!/usr/bin/env bash

sudo pacman -S keyd

sudo systemctl enable keyd --now

sudo mv default.conf /etc/keyd

sudo keyd reload
