
These are scripts I use to setup my Mac after a clean install.

## Installation:

1. Clone this repo to your home directory (**NOTE:** You must clone to `~/_bin`):

		git clone https://github.com/misterlami/dotfiles-bin.git ~/_bin

2. Run install script:

		source ~/_bin/install.sh

3. For a fresh mac setup

        Run `new_mac_setup` to install everything automatically.
        Run `list_all_installs` to see each installation.

## Miscellany
- View list of all [apps installed by homebrew](https://github.com/misterlami/dotfiles-bin/blob/master/install-brew.sh)

- Pet peeve: Remove extra space on top of prompt with oh-my-zsh Steeef Theme

        #tweak last line `PROMPT=$` to remove extra space on top of prompt
        nano ~/.oh-my-zsh/themes/steeef.zsh-theme
