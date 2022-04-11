## Miscellaneous commands

top # shows the processes running
htop # similar to top, but more interactive
xargs # useful to run commands with parameters coming from other commands previously run. E.g. to print contents of searched files: "ls | grep filename | xargs cat" or kill a searched process "pgrep inkscape | xargs kill"
uname -r # check kernel version
fc-match <font-name> # check what font does fontconfig match with the given pattern (e.g. fc-match helvetica)
$ date +'%Y%m%d-%H%M%S'

### search
grep -o -e expr1 -e expr2 # -o makes grep output only the matched expression, without its context. -e is used for starting a regular expression and we can use more than one
grep -iwrn 'path-to-folder' -e 'pattern' -C5 # search for text in files:  i for ignore case, r for recurrent directory search, n for line number, w for match whole word, -Cn for n lines of context  https://stackoverflow.com/a/30138655/1273751

### change swappiness to 10
https://askubuntu.com/questions/157793/why-is-swap-being-used-even-though-i-have-plenty-of-free-ram
sudo  hdparm -y /dev/partition_name # set Hard disk to standby mode

### check IP address of URLs
dig +short <url>  # e.g. <url>=google.com
host <url>  # e.g. <url>=google.com

### run a command
https://superuser.com/questions/46139/what-does-source-do
`source <filename>`

`. <filename>`

### to add/remove something to the dash menu check the following folders
https://askubuntu.com/questions/516207/how-to-remove-duplicate-entries-in-dash/516346#516346
    # /usr/share/applications
    # ~/.local/share/applications
    # /var/lib/snapd/desktop/applications


## git tips

Get only the remote version when in a conflict
    git checkout --theirs PATH/FILE

Take all commits from the branch, squash them into 1 commit, and merge it with your master branch.
https://tech.findmypast.com/do-not-wip/
    git merge --squash <branch-name>
That will unstage and uncommit the changes from the branch_name into the current branch for example, master.

## ssh server

How to install an ssh server (I have never done it yet):
https://www.cyberciti.biz/faq/ubuntu-linux-install-openssh-server/

How to have access to GUI programs when accessing a server through ssh (useful for plotting data that was run in the server):
`ssh -X user@ip-address`


## ssh to Github
(from pages linked at https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/connecting-to-github-with-ssh)
Run `eval $(ssh-agent -s)` and `ssh-add -l -E sha256` the output should be similar to what is at Github.

To check the ssh connection: `ssh -T git@github.com`, or `ssh -vT git@github.com`

But this is not working yet, potentially due to WSL problems as some links indicate (2020-01-04)

## mount remote filesystem
https://www.tecmint.com/sshfs-mount-remote-linux-filesystem-directory-using-ssh/
`sudo sshfs -o allow_other homero@163.1.53.146:/home/homero/ <name of remote server>`

## automount filesystem
(taken from https://www.linuxbabe.com/desktop-linux/how-to-automount-file-systems-on-linux)
Check the name of your UUID and filesystem type
`$ sudo blkid`
Create the mount point
`$ sudo mkdir /mnt/<nameofthefolder>`
Add the following line in /etc/fstab separating these items with Tab key.
`UUID=<uuid-of-your-drive>  <mount-point>  <file-system-type>  <mount-option>  <dump>  <pass>`
e.g. UUID=<uuid-of-ntfs-file-system>   /mnt/ntfs   ntfs   defaults  0  2
Save and close the file. Then reboot your system to see the if it works. So that’s how you automount a file system in Linux.

