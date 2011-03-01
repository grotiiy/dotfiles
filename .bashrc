# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

color_prompt=yes

export TERM='xterm-256color'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


PROMPT_COMMAND='PS1="\[\033[0;33m\]\`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W";else echo "\\w";fi\` \$\[\033[0m\] ";'


#lightweight programlar

alias eog='gpicview'
#alias nautilus='pcmanfm'
alias altitude='/pkd/programlar/altitude/altitude'
#alias empathy='pidgin'
alias gnome-terminal='gnome-terminal --disable-factory'
alias top="htop"

alias brightness='sudo nano /sys/class/backlight/acpi_video0/brightness'


PATH=$PATH:/sbin


EDITOR="emacs"
VISUAL="emacs" 
alias nano="emacs"
alias chromium-browser="conkeror"

export LIBGL_DRIVERS_PATH=/usr/lib32/fglrx/dri/


#swap ctrl with caps lock

#xmodmap ~/.xmodmap


