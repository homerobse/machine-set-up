## Homero's preferences ##

export PATH=/home/homero/.local/bin/:$PATH

export CONDA_CHANGEPS1=false  # to avoid the (base) ahead of my terminal
# Miniconda3 see https://stackoverflow.com/a/54725966/1273751
. /home/homero/miniconda3/etc/profile.d/conda.sh
conda activate

export CONDA_CHANGEPS1=true  # so that it shows (env) ahead of the terminal after the first terminal initialization

# shortcut commands to favourite folders
alias oxdir='cd ~/hd/Dropbox/oxford'
alias thdir='cd ~/hd/Dropbox/oxford/proj/thesis'
alias dgdir='cd ~/dphil/ufrn/dg-cells'
alias gendir='cd ~/dphil/gen-learn/'

# other shortcuts
alias jnb='jupyter-notebook'
alias gst='git status'
alias gpsh='git push'
gcmt () { git commit -m "$1";};

