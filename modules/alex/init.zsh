export PATH="$PATH:$HOME/.rvm/bin:/usr/local/share/python:/usr/bin/:$HOME/.nvm:$HOME/.nvm/v0.10.33/bin" # Add RVM to PATH for scripting

# load zmv module for batch file renaming
# autoload zmv

# load Z script
# source ~/Projects/z/z.sh

# Exports
export EDITOR="atom"

# https://github.com/LastPass/lastpass-cli#installing-on-os-x
# needs lastpass-cli for Alfred Workflow
export LPASS_AGENT_TIMEOUT=0

source "${0:h}/alias.zsh"

source ~/.nvm/nvm.sh

nvm use 0.10

if [[ -s "/Users/alex/.rvm/scripts/rvm" ]]; then
  source "/Users/alex/.rvm/scripts/rvm"
fi
