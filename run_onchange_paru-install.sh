#!/bin/sh

# Check if paru is installed
if ! command -v paru &> /dev/null
then
  sudo pacman -S --needed base-devel
  git clone --depth 1 https://aur.archlinux.org/paru.git
  cd paru
  makepkg -si
  cd ..
  rm -rf paru
fi

paru -S wezterm neovim cmake python ttf-hack-nerd
