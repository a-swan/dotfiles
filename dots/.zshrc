# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fino-time"

# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi

ZSH_DISABLE_COMPFIX=true

# Terraform Segment
zsh_terraform() {
    # break if there is no .terraform directory
    if [[ -d .terraform ]]; then
        local tf_workspace=$(/usr/local/bin/terraform workspace show)
	echo -n "$tf_workspace"
    fi
}


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
eval "$(/opt/homebrew/bin/brew shellenv)"
