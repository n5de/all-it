# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Font color
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
purple=$(tput setaf 5)
cyan=$(tput setaf 6)
gray=$(tput setaf 7)
redStrong=$(tput setaf 8)
white=$(tput setaf 9)
# Background color
azulF=$(tput setab 4)
grisF=$(tput setab 7)
# Backgrounf no color
sc=$(tput sgr0)
PS1='\[$green\]\u\[$white\]@\[$red\]\h \[$white\]$(IFS=/ d=($PWD); IFS=\n c=${#d[@]}; if [[ $PWD == $HOME ]]; then echo "~"; elif [ $c -gt 5 ]; then echo "/${d[1]}/${d[2]}/.../${d[$c-2]}/${d[$c-1]}"; else echo $PWD; fi)\[$white\]\$ \[$white\]'
