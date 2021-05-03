#
# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias open='xdg-open'
alias chrome='google-chrome-stable'
alias rmb='rm ~/.bash_history'
alias lock='swaylock'
alias shutdown='shutdown -h now'
alias pp='ping site.dc.ufscar.br'
alias grep='grep --color'
alias la='ls -a'
alias speedtest='speedtest-cli'
alias ~='cd ~'
alias myip='curl ifconfig.co'
alias print='grim -g "$(slurp)" /tmp/screenshot.png'
alias rungpu='pvkrun nowl'
alias sizeof='du -csh'
alias conex='python2 .local/bin/pynetstat'
alias compress='tar -cvJ'
alias decompress='tar -xJ'
alias psx='ps -o pid,user,pcpu,pmem,time,cmd --sort=-pcpu ax | head'
alias gcm='git commit -m' 
alias condaup='source /opt/anaconda/bin/activate root'
alias condadown='source /opt/anaconda/bin/deactivate root'
alias jsonify='python -m json.tool'
alias nmr='sudo systemctl restart NetworkManager'
alias vpnup='sudo vpnc vpn-ML.conf'
alias vpndown='sudo vpnc-disconnect'
alias vol='pavucontrol'

export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=-1
export HISTFILESIZE=-1

export PATH=$PATH:~/.local/bin
export PS1="\[$(tput bold)\][\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;81m\]\u\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;78m\]\H\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"

[ "$(id -u)" -eq 1000 ] && umask 0077
