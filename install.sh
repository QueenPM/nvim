#!/usr/bin/env bash
set -e

echo "Installing Neovim"

sudo apt-get update && sudo apt-get install -y neovim git curl

echo "Installing ripgrep"

sudo apt-get install ripgrep

echo "Installing cargo binstall"

curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

echo "Installing tree sitter cli"

cargo binstall tree-sitter-cli

echo "Install fd"

apt install fd-find

echo "Install 7z"

sudo apt install 7zip

echo "Install lazygit"

sudo apt install lazygit

# TODO install lazygit theme, move it to the config location
# lazygit --use-config-file="<config-dir>/config.yml,<your-theme>.yml"
