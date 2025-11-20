## aliases ##

# colored directory listing (a better ls)
alias l="eza --group-directories-first --octal-permissions" #--icons
alias ll="l -la"
alias ld="l -lD"
alias lld="l -laD"
alias lt="l --tree --level=2"

# quick navigation shortcuts
alias ..="cd .."
alias ...="cd ../.."

# folder shortcuts
alias h="cd ~/"
alias hb="cd ~/_bin"
alias hs="cd ~/_ssh"
alias hd="cd ~/Downloads"
alias hc="cd ~/Downloads/code"

# misc helpful commands
alias sudo="sudo " # enables aliases to be sudo'ed
alias which="which " # enables aliases to be which'ed
alias c="bat --theme=1337" # enhanced cat
alias cc="bat --theme=1337 --style=plain --paging=never" # enhanced cat
alias f="fd" # enhanced find
alias gdu="gdu-go"
alias cl="clear;"
alias cpd="cp -aR" # copy directory
alias ip="ifconfig | grep 'inet ' | awk '{print $2}'"
alias ip2="curl ifconfig.co"
alias p="ping -c 3"
alias rmd="rm -rf" # delete directory
alias serve="php -S localhost:8000" # use -t to specify different doc root
alias fserve="five-server --php='/opt/homebrew/bin/php'"
alias ytd="yt-dlp -f 'bestvideo+bestaudio' --merge-output-format mp4"

alias updatehosts="sudo bash -c 'cat ~/_ssh/hosts > /private/etc/hosts'"
alias aliases="cc ~/_bin/dot-common/aliases.sh"
alias functionz="cc ~/_bin/dot-common/help-functions.sh"
alias sourcebash="source ~/.bashrc"
alias sourcezsh="source ~/.zshrc"
alias install_bin="source ~/_bin/install.sh"
alias install_brew='/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"'

# apps
alias start_openwebui='podman run -d -p 3000:8080 --name openwebui --restart=always -v "$HOME/Downloads/code/openwebui:/app/backend/data" ghcr.io/open-webui/open-webui:main'
alias update_openwebui='podman stop openwebui || true && podman rm openwebui || true && podman pull ghcr.io/open-webui/open-webui:main && podman run -d -p 3000:8080 --name openwebui --restart=always -v "$HOME/Downloads/code/openwebui:/app/backend/data" ghcr.io/open-webui/open-webui:main'

# repls
alias py="ptpython"
alias ph="psysh"
alias art="php artisan"

# list globally installed packages
alias plist="pip3 list" # pip & python
alias clist="composer global show" # composer & php
alias nlist="npm list -g --depth=0" # npm & node
alias blist="bun pm list -g --depth=0" # bun

# homebrew
alias b="brew"
alias bs="brew search"
alias bi="brew install"
alias bu="brew uninstall"
alias bcl="brew update && brew upgrade && brew cleanup"

# git
alias g="git"
alias gs="git status -sb"
alias gl="git log --oneline --decorate --graph -7" # (show commit messages)
alias gl2="git log --oneline --decorate --graph --name-only -7" # (show commit messages and files changed)
alias gl3="git shortlog -s -n -e" # show contributors and their total # of commits
alias gl4="git log --graph -10 --branches --remotes --tags --format=format:'%Cgreen%h %Creset• %<(60,trunc)%s (%cN, %cr) %Cred%d' --date-order" #whos been working on last 10 commits (basically who's working on what now)
alias ga="git add --all"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gcl="git clone"
alias gco="git checkout"
alias grh="g reset --hard"

# docker & podman
alias p="podman"
alias pc="podman-compose"
alias d="docker"
alias dc="docker-compose"
alias docker="podman"
alias docker-compose="podman-compose"

# miscellany
alias vul=vultr

## paths ##
export PATH="$HOME/.composer/vendor/bin:$PATH" # composer
export NVM_DIR="$HOME/.nvm" && source "$(brew --prefix)/opt/nvm/nvm.sh" && source "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # nvm
export PATH="$HOME/.antigravity/antigravity/bin:$PATH" #antigravity
