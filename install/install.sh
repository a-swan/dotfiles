# Get dotfiles dir (so run this script from anywhere)
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"

# Install brew with packages & casks, composer and yarn global packages
. "$DOTFILES_DIR/install/brew.sh"

# Install oh-my-zsh
. "$DOTFILES_DIR/install/oh-my-zsh.sh"

# Bunch of symlinks
. "$DOTFILES_DIR/install/symlinks.sh"

# Set MacOS defaults and configure Dock
# Create Screenshots directory
if [ -d $HOME/Pictures/Screenshots ]; then
  echo "Screenshots dir exists"
else
  mkdir "$HOME"/Pictures/Screenshots
fi

. "$DOTFILES_DIR/macos/defaults.sh"
. "$DOTFILES_DIR/macos/dock.sh"
