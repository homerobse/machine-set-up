## HOMERO'S PREFERENCES ##

# Change shell prompt color https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
# default is PS1=\u@\h:\w\$   # u - username; h - hostname; w - current working directory
export PS1="\[\e[0;32m\]\u@\h:\w\$\[ \e[m\]"  # \e[0;32m start and \e[m end color scheme. 0;32 is the code for green color

# shortcut commands to favourite folders
alias chdd='cd /mnt/c/'
alias winh='cd /mnt/c/Users/homer'
alias repdir='cd /mnt/c/Users/homer/Dropbox/ucsd/mattarlab/replay'
alias sddir='cd /mnt/c/Users/homer/Dropbox/ucsd/'
alias drdir='cd /mnt/c/Users/homer/Dropbox/'
alias jdir='cd /mnt/c/Users/homer/Dropbox/personal/journal'
alias prdir='cd ~/projects'

# automatically cd to directory below when start
drdir

# other shortcuts
alias jnb='jupyter-notebook'
alias jlb='jupyter-lab'
alias gst='git status'
alias gpsh='git push'
gcmt () { git commit -m "$1";};

# To make jupyter notebook automatically open the browser. Source: https://towardsdatascience.com/running-jupyter-notebook-on-wsl-while-using-firefox-on-windows-5a47ebfae4c1
export BROWSER="/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"
# export BROWSER="/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"
# then run `$jupyter-notebook --generate-config`, and change one of the commented lines to False `c.NotebookApp.use_redirect_file = False`
# Source: https://stackoverflow.com/questions/59096651/change-startup-url-in-jupyter-notebook 


# not currently (2023-02-16) using the ones below 

# to add .local/bin to the PATH
export PATH=/home/homero/.local/bin/:$PATH

export CONDA_CHANGEPS1=false  # to avoid the (base) ahead of my terminal
# Miniconda3 see https://stackoverflow.com/a/54725966/1273751
. /home/homero/miniconda3/etc/profile.d/conda.sh
conda activate

export CONDA_CHANGEPS1=true  # so that it shows (env) ahead of the terminal after the first terminal initialization

# set colors for ls command output
# see https://askubuntu.com/a/466203/315699 for reference of what each number means (style/background color/font color) 
LS_COLORS='ow=01;90;102'
export LS_COLORS

## WSL SPECIFIC (this was useful in Windows 10, in Windows 11 WSL comes with X server and I didn't need this)
# set up environment variables for X terminal in WSL
# sources: https://wiki.ubuntu.com/WSL  https://stackoverflow.com/a/59843603/1273751
export DISPLAY=localhost:0.0
export LIBGL_ALWAYS_INDIRECT=1
export XDG_RUNTIME_DIR=/home/homero/runtimedir
export RUNLEVEL=3