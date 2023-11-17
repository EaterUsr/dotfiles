if status is-interactive
    starship init fish | source
end

set -gx VOLTA_HOME "$HOME/.volta"
set -x PATH "$VOLTA_HOME/bin" $PATH
set -gx PNPM_HOME "/home/alban/.local/share/pnpm"
set -x PATH $PATH $PNPM_HOME
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

alias v="nvim"
alias gc="git add --all && git commit"
alias gl="git log --oneline --graph --decorate"
alias gfs="git flow feature start"
alias gbs="git flow bugfix start"
alias gff="git flow feature finish"
alias gbf="git flow bugfix finish"
alias gpd="git push origin develop"
alias gpm="git push origin main"

export PASSWORD_STORE_DIR=/home/alban/usb/.password-store/
