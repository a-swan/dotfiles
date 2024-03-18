# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

#Config below from https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv custom_terraform vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

ZSH_DISABLE_COMPFIX=true

# Terraform Segment
zsh_terraform() {
    # break if there is no .terraform directory
    if [[ -d .terraform ]]; then
        local tf_workspace=$(/usr/local/bin/terraform workspace show)
	echo -n "$tf_workspace"
    fi
}

POWERLEVEL9K_CUSTOM_TERRAFORM="zsh_terraform"
POWERLEVEL9K_CUSTOM_TERRAFORM_BACKGROUND=221
POWERLEVEL9K_CUSTOM_TERRAFORM_FOREGROUND=000

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U +X bashcompinit && bashcompinit
#eval "${pyenv init --path)"
source $HOME/.dotfiles/.aliases
export PATH="/usr/local/opt/curl/bin:$PATH"
