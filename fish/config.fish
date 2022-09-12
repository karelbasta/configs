# Pip user only global package path
export PATH="$PATH:/home/bastakka/.local/bin"

# Wholesome linux
alias please="sudo"

# Editor
export VISUAL="vim"
export EDITOR="vim"
alias vi="vim"

# npm
set NPM_PACKAGES "/home/bastakka/.npm_packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="$MANPATH:$NPM_PACKAGES/share/man"

# Java
set JAVA_HOME "/usr/lib/jvm/default"
export PATH="$JAVA_HOME/bin:$PATH"

# cp alias
alias cp="rsync -ah --inplace --no-whole-file --info=progress2"

# Neofetch
alias neo="neofetch"

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

# Extract
function extract
        if test $argv && test -e $argv
                switch $argv
                case '*.tar.bz2'
                        tar xjf $argv
                case '*.tar.gz'
                        tar xzf $argv
                case "*.bz2"
                        bunzip2 $argv
                case "*.rar"
                        unar x $argv
                case "*.gz"
                        gunzip $argv
                case "*.tar"
                        tar xf $argv
                case "*.tbz2"
                        tar xjf $argv
                case "*.tgz"
                        tar xzf $argv
                case "*.zip"
                        unzip $argv
                case "*.Z"
                        uncompress $argv
                case "*.7z"
                        7z x $argv
                case "*.deb"
                        ar x $argv
                case "*.tar.xz"
                        tar xf $argv
                case '*'
                        echo "Could not determine file type or cannot be extracted"
                end
        else
                echo "No file provided"
        end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

thefuck --alias | source
