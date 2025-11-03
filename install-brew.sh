#!/bin/bash

brew analytics off
brew update && brew upgrade && brew cleanup

brew install bat eza fd gh git git-lfs git-delta micro teleport
brew install btop gdu httpie wget
brew install zsh zsh-autosuggestions zsh-syntax-highlighting
brew install ffmpeg yt-dlp

# REPLs, dependency managers, fonts
brew install psysh ptpython
brew install composer nvm uv
brew install font-inter font-doto font-hasklig font-jetbrains-mono
brew install hugo

# utilities
brew install iterm2 warp
brew install raycast
brew install workflowy #obsidian #logseq

brew install itsycal moom forklift
brew install appcleaner elmedia-player imageoptim keka namechanger
brew install displaylink flux-app

# web
brew install google-chrome #chatgpt-atlas #microsoft-edge #opera
brew install microsoft-teams whatsapp zoom
brew install cloudflare-warp tunnelbear

# data tools
brew install dbeaver-community #duckdb #clickhouse
brew install dbngin herd #transmit

# dev tools
brew install codex
brew install bruno sublime-merge
brew install figma figma-agent #affinity #canva
brew install sublime-text visual-studio-code #intellij-idea
brew install dotnet-sdk

# devops tools
brew install ansible vultr #awscli #azure-cli
brew install podman podman-compose podman-desktop #colima docker docker-compose docker-desktop

# AI tools
brew install ollama
brew install superwhisper chatgpt

# installs
git lfs install
nvm install --lts
npm install -g fiveserver
composer global require laravel/installer
composer global require laravel/pint

# cleanup
brew cleanup --prune=all
