# Custom Zsh Aliases & Functions

## Overview

Zsh allows me to create custom aliases and functions that make frequently used Terminal commands faster and easier to remember.

## Aliases

1. 'll' - Detailed file listing

```zsh
alias ll='ls -lah'
```

- This allows me to type "ll" instead of "ls -lah". It displays files in a detailed format, including hidden files, permissions, file sizes, and modification dates.

2. .. - Move up one directory

- alias ..='cd ..'
- This allows me to quickly move to the parent directory without typing cd .. every time.

3. gst - Check Git status

- alias gst='git status'
- This provides a shorter command for checking the current Git repository status.

4. glog - View Git history

- alias glog='git log --oneline --graph --decorate --all'
- This creates a shorter command for viewing a compact graphical representation of the Git commit history and branches.

5. gaa - Stage all Git changes

- alias gaa='git add .'
- This provides a shorter command for staging all changes in the current repository.

## Functions

1. mkcd - Create and enter a directory

```zsh
mkcd() {
    mkdir -p "$1" && cd "$1"
}
```

- This function creates a directory and immediately moves into it.
- For example: mkcd project
- Equivalent to: "mkdir -p project" & "cd project"

2. cproj - Navigate to my development projects

```zsh
cproj() {
    cd "$HOME/Focus-Bear-onboarding-mac-developer"
}
```

- This function allows me to quickly navigate to my Focus Bear onboarding repository without typing the full path.
- Ex: cproj