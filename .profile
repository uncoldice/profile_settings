# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/tool/platform-tools" ] ; then
    PATH="$HOME/tool/platform-tools:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/Android/Sdk/tools/bin" ] ; then
    PATH="$HOME/Android/Sdk/tools/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "/opt/intel/platformflashtool/bin" ] ; then
    PATH="/opt/intel/platformflashtool/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/tool/catapult/tracing/bin" ] ; then
    PATH="$HOME/tool/catapult/tracing/bin:$PATH"
fi

alias get_sem_flash='scp -r djzkzc@10.239.124.56:/home/djzkzc/work/sem/out/target/product/gtt_abl_car/gtt_hydra-flashfiles-eng.djzkzc.zip ./'
alias get_ihu_flash='scp -r djzkzc@10.239.124.56:/home/djzkzc/work/ihu/out/target/product/ihu_abl_car/ihu_kraken-flashfiles-eng.djzkzc.zip ./'
alias bs='ssh -Y djzkzc@10.239.124.56'
alias apt-get='sudo apt-get'
alias go_ihu='cd $HOME/remote/ihu/out/target/product/ihu_abl_car'
alias r1='tmux attach -t remote_1'
alias r2='tmux attach -t remote_2'
alias chrome='chromium-browser'
alias diff='meld'
unalias ccat
alias cat='ccat'

#sudo mount -t cifs //10.239.124.56/djzkzc $HOME/remote -o username='djzkzc',password='aptiv',uid='djzkzc',gid='user'

#
# Save value of PATH prior to performing any BSP setup; so, that it can easily
# be set back to its pre-BSP value.
#
export PRE_BSP_PATH=$PATH

export EDITOR=gedit

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
JRE_HOME=$JAVA_HOME/jre
JAVA_BIN=$JAVA_HOME/bin
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
export JAVA_HOME JRE_HOME PATH CLASSPATH
#sudo docker run -d -e REINDEX=30 -v /home/user/work/ihu:/src -p 8080:8080 -p 2222:22 opengrok/docker:latest
