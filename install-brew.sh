#!/bin/bash

brew analytics off
brew update && brew upgrade && brew cleanup

brew install bat eza fd gh git git-lfs git-delta micro teleport
brew install btop gdu httpie wget
brew install zsh zsh-autosuggestions zsh-syntax-highlighting
brew install ffmpeg yt-dlp

# REPLs, dependency managers, fonts
brew install psysh bpython
brew install composer nvm uv
brew install font-doto font-hasklig font-hack font-inter font-jetbrains-mono font-source-code-pro
brew install hugo

# utilities
brew install warp #iterm2 #ghostty
brew install raycast #alfred
brew install workflowy #obsidian #logseq

brew install itsycal
brew install moom

brew install appcleaner
brew install elmedia-player
brew install imageoptim
brew install keka
brew install launchpad-manager
brew install namechanger
brew install superwhisper

# cloud & web
brew install microsoft-edge@beta #google-chrome@beta #opera

# data tools
brew install dbeaver-enterprise
brew install dbngin #duckdb #clickhouse
brew install transmit

# dev tools
brew install bruno #postman
brew install sublime-merge
brew install sublime-text visual-studio-code cursor #intellij-idea
brew install cursor-cli codex gemini-cli

# devops tools
brew install ansible
#brew install colima docker docker-compose docker-credential-helper
#brew install podman podman-compose
#brew install utm
#brew install vultr #awscli #azure-cli #google-cloud-sdk

# ML & AI
brew install ollama
#brew install jupyterlab

# installs
git lfs install

# cleanup
brew cleanup --prune=all
