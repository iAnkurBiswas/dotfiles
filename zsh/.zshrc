# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ankur/.oh-my-zsh"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk/Contents/Home"
export ANDROID_HOME=/Users/trinity/Library/Android/sdk
export ANDROID_TOOLS=${ANDROID_HOME}/platform-tools
export PATH=${ANDROID_HOME}:${ANDROID_TOOLS}:${PATH}
export PATH="/usr/local/sbin:$PATH"

ZSH_THEME=""

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
  brew
  common-aliases
  node
  npm
  yarn
  colorize
  sudo
)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=3"
source $ZSH/oh-my-zsh.sh

# Pure setup
autoload -U promptinit && promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10
prompt purity

# Alias
alias cls="clear"
alias down="cd ~/Downloads"
alias desk="cd ~/Desktop"
alias nh="cd ~/Documents/code/github.com/naturehub.com/"
alias proj="cd ~/Documents/code/"

alias ..="cd .."
alias ....="cd ../.."
alias ls="tree -L 1"
alias run_mongo="sudo mongod --dbpath /usr/local/var/mongodb --logpath /usr/local/var/log/mongodb/mongo.log"

alias bat_status="system_profiler SPPowerDataType | grep -A3 -B7 'Condition'"
alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"

alias brewup="brew update; brew upgrade; brew cleanup; brew doctor;"

mkd() {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}
0x0() {
	curl -F "file=@${1}" https://0x0.st
}
shrt() {
	curl -F "shorten=${1}" https://0x0.st
}
mp3 () {
  youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '%(title)s.%(ext)s' "$1"
}
# Intalled manually Node-v.16
export PATH="/usr/local/opt/node@16/bin:$PATH"
