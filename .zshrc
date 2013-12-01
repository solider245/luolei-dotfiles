
#-------------------------------------------------------------------
#Oh-my-ZSH 配置 -------- http://luolei.org 
#-------------------------------------------------------------------

# Path to your oh-my-zsh configuration.
ZSH=$HOME/oh-my-zsh

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

alias edit=$EDITOR
export EDITOR= "vim"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/oh-my-zsh"

alias sz='source ~/.zshrc'

# -------------------------------------------------------------------
# Directory movement 文件夹移动
# -------------------------------------------------------------------
  alias up="cd .."
  alias bk="cd $OLDPWD" 
  alias ..='cd ..'
  alias ...='cd ../..'
  alias ....='cd ../../..'


# -------------------------------------------------------------------
# Directory information 文件信息
# -------------------------------------------------------------------
   alias ls="ls --color=auto"
   alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
   alias dus="du -sckx * | sort -nr" #根据文件大小排序
   alias lh='ls -d .*' # show hidden files/directories only #只显示隐藏文件

# -------------------------------------------------------------------
# 服务器 Servers
# -------------------------------------------------------------------
  alias is26="ssh root@is26.com"
  alias ocean="ssh root@192.241.199.155"

# -------------------------------------------------------------------
# 快速编辑常用文件 Quick Edit 
  # -------------------------------------------------------------------
  #alias vim ="/usr/bin/vim"
  #alias ze ="vim \~/.zshrc" #
  #alias he ="$EDITOR /etc/hosts" #
  alias hosts="edit /etc/hosts"

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
  alias gam="git commit -a -m"
  alias gc= "git checkout" 
  alias gs="git status"
  alias gp='git push'
  alias gl='git lg'

  

# -------------------------------------------------------------------
# 系统相关 Mac Only
# -------------------------------------------------------------------

  alias dns="dscacheutil -flushcache"
  alias gfw="node fuckgfw/local.js" #shadowsocks翻墙
  alias oo='open .' # open current directory in OS X Finder


# -------------------------------------------------------------------
# Android 
# -------------------------------------------------------------------
   alias adblb="adb forward tcp:9222 localabstract:liebao_devtools_remote"
 

#快速查看IP地址 
function ipfor(){
        dig +short $1 | grep -E '^[0-9.]+$' | head -1
}

  
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
plugins=(autojump)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# For luolei

#Chinese Support 中文支持
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

#Android DEV 安卓Adb工具对应位置
export PATH=$PATH:/Users/luolei/Downloads/platform-tools/
export PATH=$PATH:/Users/luolei/Dropbox/Development/platform-tools/

#autojump Support

