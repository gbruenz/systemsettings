#enable sudo aliases
alias sudo='sudo '

alias ..='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -Fhl'
alias la='ll -a'
alias l='ls -FCh'

alias gzc='gzip --best --no-name'
alias bz2c='bzip2 --best'
alias xzc='xz --best --extreme'

alias apt-update='sudo apt-get update'
alias apt-upgrade='sudo aptitude safe-upgrade'
alias apt-autoremove='sudo apt-get --purge autoremove'
alias apt-autoclean='sudo apt-get autoclean'
alias update-system='apt-update && sudo aptitude -y -s safe-upgrade'
alias upgrade-system='apt-upgrade && apt-autoremove && apt-autoclean'
alias telnet='telnet -e "#"'
alias picocom='sudo picocom -b 115200'
alias netcat='netcat -q -1 -vv'
alias svn_mime_set='for a in $(find ./ -type f -not -regex ".*\.svn.*"); do svn pset svn:mime-type $(file --mime-type $a | sed "s/  *//g;s/[^:]*://g") $a; done;'
alias clean-gpg='for a in $(gpg2 -k | grep "^pub" | awk "BEGIN {} {print $2}" | sed "s/[0-9]*[DR]\///"); do gpg2 --quiet --no-tty --edit-key $a clean save; done;'
alias alert='notify-send --urgency=low -i "$([ $? -eq 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias git-patch='git diff --minimal --find-renames --find-copies --relative ./ > ../$(basename `pwd`).patch && git co -- ./'

alias ssh='TERM=linux ssh'
alias ssh-add-all='for a in .ssh/id_*; do ssh-add $a; done;'

alias screen='screen -RU'
xmlformat () { xmllint --format "$1" | unexpand -t 2 --first-only; }
alias jjar='java -jar'
alias ifc='sudo ifconfig -a'
alias ping='sudo ping'
alias nping='sudo nping'
alias wol='wakeonlan -f ~/.wol_macaddr'
alias gg='gitg &'
alias ws0='wireshark -k -i eth0'

alias dmesg='sudo dmesg'

alias p='ptxdist'
alias pg='ptxdist go'
alias pi='ptxdist images'
