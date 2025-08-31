## functions ##

function enter() {
    mkdir $1
    cd $1
}

# copy your id_rsa.pub key to a host
function copy_ssh_key() {
    USER=$1
    HOST=$2

    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "ERROR: requires two parameters: 1 - user, 2-host"
        echo "1. user (e.g. ubuntu) "
        echo "2. host (e.g. 10.0.0.1 or opsman.example.org) "
        return 1
    fi

    echo "** attempting to connect to $USER@$HOST to add your key as a known host **"
    cat ~/.ssh/id_rsa.pub | ssh $USER@$HOST "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"
}

# generate a new ssh key and copy it to a host
function create_and_copy_ssh_key() {
    USER=$1
    HOST=$2

    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "ERROR: requires two parameters: 1 - user, 2-host"
        echo "1. user (e.g. ubuntu) "
        echo "2. host (e.g. 10.0.0.1 or opsman.example.org) "
        return 1
    fi

    ssh-keygen -t ECDSA -N '' -C $HOST -f ~/_ssh/keys/$HOST

    echo "** attempting to connect to $USER@$HOST to add your key as a known host **"
    cat ~/_ssh/keys/$HOST.pub | ssh $USER@$HOST "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"
}

function recursively_delete_files_ending_with() {
    find . -name "*$1" -type f -delete
}

function name_mac() {
    local MACNAME

    if [ -z "$1" ]; then
        MACNAME="lamz-macbook"
    else
        MACNAME=$1
    fi

    sudo scutil --set ComputerName "$MACNAME"
    sudo scutil --set LocalHostName "$MACNAME"
    sudo scutil --set HostName "$MACNAME"
    sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$MACNAME"
    sudo dscacheutil -flushcache
}

function check_brew_installation() {
    if type brew > /dev/null; then
        return 0
    else
        echo "Homebrew is not installed.  Run the command 'install_brew' to install it"
        return 1
    fi
}

function install_homebrew_apps() {
    if check_brew_installation; then
        source ~/_bin/install-brew.sh
    fi
}

function install_terminal_helpers() {
    # install hush login
    echo "*** installing hushlogin ***"
    touch ~/.hushlogin && echo "# This file prevents the shell login message from appearing" >> ~/.hushlogin

    # install oh-my-zsh
    echo "*** installing oh-my-zsh ***"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
}

function list_all_installs() {
    echo '=============================================================='
    echo ' Available Installations (run "new_mac_setup" to install all) '
    echo '=============================================================='
    echo 'install_terminal_helpers - installs hushlogin & oh-my-zsh'
    echo ''
    echo 'install_brew - installs homebrew'
    echo 'install_homebrew_apps - installs misc homebrew apps'
    echo ''
    echo 'install_node - installs nvm and node'
    echo 'install_laravel - installs laravel'
    echo '=============================================================='
}

function new_mac_setup() {
    install_terminal_helpers
    install_brew
    install_homebrew_apps
    install_bin
    install_node
    install_laravel
}
