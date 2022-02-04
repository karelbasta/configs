# Editor
set EDITOR "vim"
alias vi="vim"

# npm
set NPM_PACKAGES "/home/bastakka/.npm_packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="$MANPATH:$NPM_PACKAGES/share/man"

# Neofetch
alias neo="neofetch"

# Power options
alias shutdown="wsl.exe --terminate Arch"

# Quick folder access
alias school="cd /mnt/c/Users/basta/Documents/Personal/School"
alias it="cd /mnt/c/Users/basta/Documents/Personal/Information\ technology"

# Lighthouse
alias li="lighthouse"
alias lperf="lighthouse --only-categories=performance"

# Git
alias ginit="git init"
alias gadd="git add"
alias gcommit="git commit"
alias gpush="git push"
alias gpull="git pull"

# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

thefuck --alias | source