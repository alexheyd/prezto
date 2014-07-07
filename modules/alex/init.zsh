export PATH="$PATH:$HOME/.rvm/bin:/usr/local/share/python:/usr/bin/" # Add RVM to PATH for scripting

# load zmv module for batch file renaming
# autoload zmv

# load Z script
# source ~/Projects/z/z.sh

# Exports
export EDITOR="atom"

source "${0:h}/alias.zsh"

if [[ -s "/Users/alex/.rvm/scripts/rvm" ]]; then
  source "/Users/alex/.rvm/scripts/rvm"
fi
