## Homero's preferences ##

# Change shell prompt color https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
# default is PS1=\u@\h:\w\$
export PS1="\e[0;32m\u@\h:\w\\$ \e[m"

export PATH=/home/homero/.local/bin/:$PATH

export CONDA_CHANGEPS1=false  # to avoid the (base) ahead of my terminal
# Miniconda3 see https://stackoverflow.com/a/54725966/1273751
. /home/homero/miniconda3/etc/profile.d/conda.sh
conda activate

export CONDA_CHANGEPS1=true  # so that it shows (env) ahead of the terminal after the first terminal initialization

# shortcut commands to favourite folders
alias oxdir='cd ~/hd/Dropbox/oxford'
alias gendir='cd ~/dphil/gen-learn/'

# automatically cd to directory below when start
oxdir

# other shortcuts
alias jnb='jupyter-notebook'
alias gst='git status'
alias gpsh='git push'
gcmt () { git commit -m "$1";};

## WSL SPECIFIC
# set up environment variables for X terminal in WSL
# sources: https://wiki.ubuntu.com/WSL  https://stackoverflow.com/a/59843603/1273751
export DISPLAY=localhost:0.0
export LIBGL_ALWAYS_INDIRECT=1
export XDG_RUNTIME_DIR=/home/homero/runtimedir
export RUNLEVEL=3

# In wsl, to make jupyter notebook automatically open the browser. Source: https://towardsdatascience.com/running-jupyter-notebook-on-wsl-while-using-firefox-on-windows-5a47ebfae4c1
export BROWSER="/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"
# export BROWSER="/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"

# set colors for ls command output
# see https://askubuntu.com/a/466203/315699 for reference of what each number means (style/background color/font color) 
LS_COLORS='ow=01;90;102'
export LS_COLORS
