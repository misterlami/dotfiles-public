#!/bin/bash

brew analytics off
brew update && brew upgrade && brew cleanup

brew install bat eza fd fzf ripgrep ast-grep gh git git-lfs git-delta micro teleport
brew install btop gdu httpie wget
brew install zoxide zsh zsh-autosuggestions zsh-syntax-highlighting
brew install ffmpeg yt-dlp

# REPLs, dependency managers, fonts
brew install psysh ptpython
brew install composer nvm oven-sh/bun/bun uv
brew install font-doto font-bevan font-hasklig font-jetbrains-mono
brew install hugo

# utilities
brew install iterm2 warp
brew install raycast
brew install workflowy #obsidian #logseq

brew install itsycal moom forklift
brew install appcleaner elmedia-player imageoptim keka namechanger
brew install displaylink flux-app
brew install google-drive

# web
brew install google-chrome #microsoft-edge #opera #chatgpt-atlas
brew install microsoft-teams whatsapp zoom
brew install cloudflare-warp tunnelbear

# design tools
brew install figma figma-agent #affinity #obs

# data tools
brew install dbeaver-community #duckdb #chroma
brew install transmit #mailpit #dbngin #herd

# dev tools
brew install codex
brew install sublime-merge bruno httpie-desktop
brew install sublime-text visual-studio-code antigravity #intellij-idea
brew install dotnet-sdk

# devops tools
brew install ansible vultr awscli #azure-cli
brew install podman podman-compose podman-desktop
#brew install colima docker docker-compose docker-desktop
#brew install crystalfetch utm

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
