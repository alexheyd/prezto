###############################################################################
# Prezto
###############################################################################
alias src="source ~/.zshrc"
alias ealias="subl ~/.zprezto/modules/alex/alias.zsh"
alias ecfg="subl ~/.zpreztorc"
alias eprezto="subl ~/.zprezto"
alias uprezto="cd ~/.zprezto && git pull up master && git submodule update --init --recursive"
alias zp="cd ~/.zprezto"

###############################################################################
# (Gaikai Specific) open Google Chrome with Web Security Disabled
###############################################################################
alias chr="open /Applications/Google\ Chrome.app --args --disable-web-security"
alias canary="open /Applications/Google\ Chrome\ Canary.app --args --disable-web-security"
alias swfstatic="static --cache 1 --port 9999"
alias sf="cd ~/Sites/swordfish"
alias sfgk="cd ~/Sites/swordfish/js/lib/gaikai"
alias gk="cd ~/Sites/gaikai.com"
# Mount/unmount specific VM folder
alias mountvm="mkdir /Volumes/GitHub && mount_smbfs //alex@alex-pc/GitHub /Volumes/GitHub && subl /Volumes/GitHub"
alias umountvm="umount -f /Volumes/GitHub"

###############################################################################
# Utilities
###############################################################################
alias -- -='cd -'
alias extract="unarchive"

###############################################################################
# Apache
###############################################################################
alias restart_apache="sudo apachectl -e info -k restart"
alias start_apache="sudo apachectl start"
alias stop_apache="sudo apachectl stop"
alias ehosts="subl /etc/hosts"
alias evhosts="subl /private/etc/apache2/extra/httpd-vhosts.conf"
alias eapache="subl /etc/apache2/httpd.conf"

###############################################################################
# System
###############################################################################
alias rmdir="rm -rf"
alias o="open"
alias oo="open ."
alias etrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias clr="clear"
alias l="ls -la"
alias busyport="lsof -i"
# Toggle hidden files
alias showhidden="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"
# Toggle desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
# `cat` with beautiful colors. requires Pygments (sudo easy_install Pygments)
alias c="pygmentize -O style=twilight -f console256 -g"
# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"
# Flush Directory Service cache
alias flush="dscacheutil -flushcache"
# Trim new lines and copy to clipboard
alias trimcopy="tr -d '\n' | pbcopy"
# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
# File size
alias fs="stat -f \"%z bytes\""
# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

###############################################################################
# Git
###############################################################################
# alias g="git"
alias gst="git status -sb"
# alias gss="git status -s"
# alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# alias gc="git commit -m"
# alias gca="git commit -a -m"
# alias ga="git add"
alias gaa="git add . -A"
alias gfu="git fetch upstream"
alias gfo="git fetch origin"
# alias grmbr="git branch -D"
# alias gbr="git co -b"
alias cbr="git-branch-current"
alias unstage="git reset"
alias undoall="git reset --hard"
alias undo1="git reset --soft 'HEAD^'"
alias undopush="git push -f origin HEAD^:master"
# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'