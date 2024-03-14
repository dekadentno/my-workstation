#!/bin/bash

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Oh My Zsh is not installed. Install Oh My Zsh first."
  exit 1
fi

declare -A plugins
plugins=(
  ["zsh-z"]="https://github.com/agkozak/zsh-z.git"
  ["zsh-syntax-highlighting"]="https://github.com/zsh-users/zsh-syntax-highlighting.git"
  ["zsh-autosuggestions"]="https://github.com/zsh-users/zsh-autosuggestions.git"
  ["you-should-use"]="https://github.com/MichaelAquilina/zsh-you-should-use.git"
)

for plugin in "${!plugins[@]}"; do
  repo=${plugins[$plugin]}
  target="$HOME/.oh-my-zsh/custom/plugins/$plugin"

  if [ ! -d "$target" ]; then
    echo "Installing $plugin..."
    git clone "$repo" "$target"
  else
    echo "$plugin is already installed."
  fi
done

echo "Installation of plugins complete."
