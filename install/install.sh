# Get dotfiles dir (so run this script from anywhere)
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

# Install oh-my-zsh
. "$DOTFILES_DIR/install/oh-my-zsh.sh"

# Install brew with packages & casks, composer and yarn global packages
. "$DOTFILES_DIR/install/brew.sh"

# Bunch of symlinks
. "$DOTFILES_DIR/install/symlinks.sh"