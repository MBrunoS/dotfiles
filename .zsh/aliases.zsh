# Alias
# ---
#
# Named Directories:
$IS_WSL && WIN_PATH="C:/Users/mauri"
$IS_WSL && hash -d home=/mnt/c/Users/mauri
hash -d dev=~/software-development
# Aliases
$IS_WSL && alias home="cd ~home"
alias dev="cd ~dev"
alias sendspark="cd ~dev/sendspark"
alias reload="source ~/.zshrc"
alias install="sudo apt-get install"
alias lg="lazygit"
if_exists code && alias zshconfig="code $HOME/.zshrc"
alias delete="rm -rf"
alias myip="curl http://ipecho.net/plain; echo"
$IS_WSL && alias explorer="/mnt/c/Windows/explorer.exe"
# $IS_WSL && alias ollama="ollama.exe"
# Git Aliases
alias gi="git init"
alias gc="git commit -m"
alias ga="git add"
alias gpo="git push origin"
alias gb="git branch"
alias gcb="git checkout -b"
alias gs="git status"
alias gss="git status -s"
alias gd="git diff"
alias gds="git diff --stat"
# Docker Aliases
if_exists docker && alias drai="docker rmi $(docker images -a -q)"
if_exists docker && alias drac="docker rm $(docker ps -a -q)"
# LSD Config
if_exists lsd && alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
if_exists lsd && alias lt='ls --tree --ignore-glob="**/node_modules/**"'
alias vim="nvim"
