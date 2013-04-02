#
# ~/.bashrc
#



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias top='htop'


export EDITOR="emacs"
export VISUAL="emacs"


#PS1='[\u@\h \W]\$ '

color_prompt=yes


parse_git_branch() {
    git branch 2> /dev/null | sed  -e 's/* \(.*\)/(\1)/'
}

parse_virtual_env(){
    if test -z $VIRTUAL_ENV; then
	VENV=""
    else
	VENV=`basename $VIRTUAL_ENV`
    fi
    echo $VENV

}

#export PS1="\[\033[00m\]\u@\h\[\033[01;34m\]\W\[\033[31m\]\\[\033[00m\]$\[\033[00m\] "

#PROMPT_COMMAND='PS1="\[\033[0;33m\]\`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W";else echo "\\w";fi\` \$\[\033[0m\] ";'

#PROMPT_COMMAND='PS1="\[\033[0;33m\]\`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W";else echo "\\w";fi\` \$\[\033[0m\] \e[1;31m\]$(parse_virtual_env)$(parse_git_branch)\e[0m\] ";'


#alias python=python
alias heroku=/opt/heroku-client/heroku
alias c='xclip -selection c'
alias diff=colordiff

export LESS_TERMCAP_us=$'\e[32m'  
export LESS_TERMCAP_ue=$'\e[0m'  
export LESS_TERMCAP_md=$'\e[1;31m'  
export LESS_TERMCAP_me=$'\e[0m'  
export LESS=-R

export PYMACS_PYTHON=python2

export PERL_LOCAL_LIB_ROOT="/home/yigit/perl5";
export PERL_MB_OPT="--install_base /home/yigit/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/yigit/perl5";
export PERL5LIB="/home/yigit/perl5/lib/perl5/i686-linux-thread-multi:/home/yigit/perl5/lib/perl5";
export PATH="/home/yigit/perl5/bin:$PATH";


[[ -f ~/.bash_profile ]] && . ~/.bash_profile


function roll() {
    ssh $1@sentry.hipo.biz "deploy $2 $1 $3 0 pipforce"
}

alias ssh_mobilicity='ssh -t mobilicity@hub.hipo.biz ssh mobilicity@mobilicity.ca'
alias ssh_moviebox='ssh -t moviebox@hub.hipo.biz ssh ubuntu@moviebox'
alias ssh_bestofturkey='ssh -t best_of_turkey@hub.hipo.biz ssh ubuntu@bestofturkey'
alias ssh_blogto='ssh -t blogto@hub.hipo.biz ssh ubuntu@profiles.blogto.com'
alias ssh_choicelr='ssh -t choicelr@hub.hipo.biz ssh ubuntu@choicelr'
alias ssh_strum='ssh -t strum@hub.hipo.biz ssh ubuntu@strum.co'
alias ssh_passbuildr='ssh -t passbuildr@hub.hipo.biz ssh ubuntu@passbuildr'

export AWS_AUTO_SCALING_HOME=/home/yigit/hipo/aws/AutoScaling-1.0.61.1
export PATH=$PATH:$AWS_AUTO_SCALING_HOME/bin 
export AWS_CREDENTIAL_FILE=$AWS_AUTO_SCALING_HOME/credential-file-name


export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=r600
LIBVA_DRIVERS_PATH=/usr/lib/vdpau

alias python=python2

alias emacs='emacsclient -t -a ""'
alias e='emacsclient -t -a ""'


#aws bash complete
complete -C aws_completer aws
export PATH=$PATH:/home/yigit/android-sdks/platform-tools


export PATH=$PATH:/home/yigit/.gem/ruby/1.9.1/bin

shopt -s cdspell
