# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="robbyrussell"

ZSH_DISABLE_COMPFIX=true

# Configure ZSH Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst

zstyle ':vcs_info:git:*' formats '%b '

PROMPT=' %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f%F{purple}⠠⠵%f '

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
autoload -U +X bashcompinit && bashcompinit
source $HOME/.dotfiles/dots/.aliases
export PATH="/usr/local/opt/curl/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
