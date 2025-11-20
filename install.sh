#!/bin/bash

echo "Backing up dotfiles..."
[ -f ~/.bashrc ] && mv -n ~/.bashrc ~/.bashrc_backup
[ -f ~/.zshrc ] && mv -n ~/.zshrc ~/.zshrc_backup
[ -f ~/.vimrc ] && mv -n ~/.vimrc ~/.vimrc_backup
[ -f ~/.gitconfig ] && mv -n ~/.gitconfig ~/.gitconfig_backup
[ -f ~/.gitignore ] && mv -n ~/.gitignore ~/.gitignore_backup

echo "Aliasing dotfiles..."
ln -sf ~/_bin/dot-files/bashrc ~/.bashrc
ln -sf ~/_bin/dot-files/zshrc ~/.zshrc
ln -sf ~/_bin/dot-files/vimrc ~/.vimrc
ln -sf ~/_bin/dot-files/gitconfig ~/.gitconfig
ln -sf ~/_bin/dot-files/gitignore ~/.gitignore

if command -v code >/dev/null 2>&1; then
    # backup if original file exists, not symlink
    [ -f "$HOME/Library/Application Support/Code/User/settings.json" ] && mv -n "$HOME/Library/Application Support/Code/User/settings.json" "$HOME/Library/Application Support/Code/User/settings.json_bkup"
    [ -f "$HOME/Library/Application Support/Code/User/keybindings.json" ] && mv "$HOME/Library/Application Support/Code/User/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json_bkup"

    echo "Aliasing vscode settings..."
    ln -sf "$HOME/_bin/vscode-settings/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
    ln -sf "$HOME/_bin/vscode-settings/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
else
  echo "VS Code is not installed (code command not found)"
fi

# source rc file
echo "Sourcing aliased dotfiles..."
if [[ "$0" == "-zsh" ]]; then source ~/.zshrc; fi
if [[ "$0" == "-bash" ]]; then source ~/.bashrc; fi

echo '==================================================================='
echo '1. source ~/.zshrc'
echo '2. run "install_terminal_helpers" to install ohmyzsh'
echo '3. run "list_all_installs" - to view setups/installations available'
echo '==================================================================='
