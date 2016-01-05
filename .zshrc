#Oh-my-ZSH 配置 -------- http://luolei.org
#-------------------------------------------------------------------
# Path to your oh-my-zsh configuration.设置 ZSH默认路径
ZSH=$HOME/oh-my-zsh

# Setup terminal, and turn on colors 颜色配置
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# 设置默认编辑器
alias vi='vim'
alias edit=$EDITOR
export EDITOR= "vim"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/

ZSH_THEME="ys"
alias sz='source ~/.zshrc' #重新执行

# -------------------------------------------------------------------
# Directory movement 文件夹移动
# -------------------------------------------------------------------
alias up="cd .."
alias bk="cd -"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias godesk='cd ~/Desktop'

# -------------------------------------------------------------------
# Directory information 文件信息
# -------------------------------------------------------------------
alias ls="ls --color=auto"
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias dus="du -smh * | sort -nr" #根据文件大小排序
alias lh='ls -d .*' # show hidden files/directories only #只显示隐藏文件
alias ld="ls -lih"
alias map='traceroute' #路由跟踪
alias tgz='tar -czf' #tar -czf [文件名] [被压缩文件] gzip压缩
alias ugz='tar -xzf' #tar -xzf [被压缩文件]
#alias pwd='pwd && pwd' #查看当前路径
alias pwdc='pwd && pwd | pbcopy' #查看当前路径并且复制

#
alias cleanDS='find . -name ".DS_Store" -print0 | xargs -0 rm -rf' #清除目录下的 DS_Store文件

fucntion mkd(){
mkdir -p "$@" && cd "$@"
   }
   ###列出系统最大的文件 快捷 maxfile 即可
   maxfile(){
	   lsof / | awk '{ if($7 > 1048576) print $7/1048576 "MB "$9 }' | sort -n -u | tail
   }

   extract () {
	   if [ -f $1 ] ; then
		   case $1 in
			   *.tar.bz2)   tar xjf $1     ;;
		   *.tar.gz)    tar xzf $1     ;;
	   *.bz2)       bunzip2 $1     ;;
   *.rar)       unrar e $1     ;;
		*.gz)        gunzip $1      ;;
	*.tar)       tar xf $1      ;;
*.tbz2)      tar xjf $1     ;;
		*.tgz)       tar xzf $1     ;;
	*.zip)       unzip $1       ;;
*.Z)         uncompress $1  ;;
		*.7z)        7z x $1        ;;
	*)     echo "'$1' cannot be extracted via extract()" ;;
esac
	 else
		 echo "'$1' is not a valid file"
	 fi
 }

 ###

 # -------------------------------------------------------------------
 # 服务器 Servers
 # -------------------------------------------------------------------
 #alias is26="ssh -p 1818 luolei@173.255.255.242"
 alias jpluolei="ssh -p 1818 luolei@106.187.102.77"
 alias ocean="ssh -p 1717  luolei@192.241.199.155"
 alias aliyun="ssh root@aliyun.is26.com"
 alias aliluolei="ssh luolei@aliyun.is26.com"
 alias yuewen="ssh luolei@10.97.19.100"

 # -------------------------------------------------------------------
 # VPS 相关 Servers in air
 # -------------------------------------------------------------------

 # -------------------------------------------------------------------
 # 快速编辑常用文件 Quick Edit
 # -------------------------------------------------------------------

 ###快速编辑
 ze(){
	 vim ~/.zshrc  #编辑ZSH配置文件
 }
 hosts(){
	 sudo vim /etc/hosts  #编辑 hosts 文件
 }
 vimrc(){
	 vim ~/.vimrc #编辑vim配置
 }
 # -------------------------------------------------------------------
 # Git
 # -------------------------------------------------------------------
 alias gam="git commit -a -m"
 alias gc= "git checkout"
 alias gs="git status"
 alias gp='git push'
 alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit "
 alias gb='git branch'
 alias gd='git diff' #显示缓存变化
 alias ghard='git reset --hard'
 # -------------------------------------------------------------------
 # SVN 配置
 # -------------------------------------------------------------------

 #给svn 添加颜色区分
 function svn {
 command svn "$@" | awk '
 BEGIN {
 cpt_c=0;
  }
  {
	  if        ($1=="C") {
		  cpt_c=cpt_c+1;
		  print "\033[31m" $0 "\033[00m";  # Conflicts are displayed in red
	  }
  else if   ($1=="A") {
	  print "\033[32m" $0 "\033[00m";  # Add in green
  }
	else if   ($1=="?") {
		print "\033[36m" $0 "\033[00m";  # New in cyan
	}
else if   ($1=="D") {
	print "\033[35m" $0 "\033[00m";  # Delete in magenta
}
	else                {
		print $0;                        # No color, just print the line
	}
}
END {
print cpt_c, " conflicts are found.";
  }';
}
#

# -------------------------------------------------------------------
# 极点客  Geek
# -------------------------------------------------------------------
# 利用 python 内置快速建立个简单的服务器
function hittp {
myip
echo '你的服务器地址是:' $lanip
python -m SimpleHTTPServer $1
}
function nodeweb {
echo '启动Node Http Server'
 http-server
}

###快速查看IP地址
function ipfor(){
dig +short $1 | grep -E '^[0-9.]+$' | head -1
}

###快速开启apache

function hiweb {
sudo apachectl start

}


###快速查看本机IP地址
function myip(){
myip="$(ifconfig | grep 'inet.*netmask.*broadcast')"
lanip="$(echo $myip | awk '{print $2}')"
publicip="$(echo $myip | awk '{print $6}')"
echo '你的局域网IP是: '$lanip
echo '你的外网IP是: '$publicip
echo '已经复制到剪贴板' pbcopy
}

# -------------------------------------------------------------------
# 系统相关 Mac Only
# -------------------------------------------------------------------

alias dns="dscacheutil -flushcache"
alias gfw="cd $HOME/Dropbox/GFW" #shadowsocks翻墙
alias oo='open .' # open current directory in OS X Finder
alias st='sublime' #open with sublime # ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

# -------------------------------------------------------------------
# Android
# -------------------------------------------------------------------
alias adblb="adb forward tcp:9222 localabstract:liebao_devtools_remote"

# -------------------------------------------------------------------
# 开发相关
# -------------------------------------------------------------------

alias gt="grunt"
alias gwb="grunt watch:base"
alias gbl="grunt bundle"
alias gpb="grunt publish"


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
# 选择你所需要的插件

plugins=(git node brew svn)
plugins=(autojump)
source $ZSH/oh-my-zsh.sh
#source ~/.nvm/nvm.sh
#Npm相关
alias cnpm="npm --registry=http://r.cnpmjs.org \
	--cache=$HOME/.npm/.cache/cnpm \
	--disturl=http://dist.cnpmjs.org \
	--userconfig=$HOME/.cnpmrc"
# For luolei
alias pc='proxychains4'
#Chinese Support 中文支持
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#Android DEV 安卓Adb工具对应位置
export PATH=$PATH:$HOME/Downloads/platform-tools/
export PATH=$PATH:$HOME/Dropbox/Development/platform-tools/
#SVN 设置
export PATH=/usr/bin:$PATH

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export PATH="/usr/local/bin:$PATH"
 export NODE_PATH=/usr/local/lib/node_modules
source /usr/local/opt/nvm/nvm.sh
