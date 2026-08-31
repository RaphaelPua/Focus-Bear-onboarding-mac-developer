# Focus Bear onboading aliases

alias ll='ls -lah'
alias ..='cd ..'
alias gst='git status'
alias glog='git log --oneline --graph --decorate --all'
alias gaa='git add .'

# Functions

mkcd() {
    mkdir -p "$1" && cd "$1"
}

cproj() {
    cd "$HOME/Focus-Bear-onboarding-mac-developer"
}