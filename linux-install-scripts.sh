# python notebooks
pip install jupyter
pip install jupyterthemes

# notification for caps lock key
sudo add-apt-repository ppa:tsbarnes/indicator-keylock
sudo apt-get update
sudo apt-get install indicator-keylock

# install play on linux
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_precise.list -O /etc/apt/sources.list.d/playonlinux.list
sudo apt-get update
sudo apt-get install playonlinux

# install okular pdf reader
sudo apt-get install okular

# Create new document right-click option (which is initially missing in Ubuntu 16.04 and 18.04)
# maybe also add a new LibreOffice Writer file
cd ~
touch ~/Templates/Text\ File.txt

# To have shift working as in Windows with numpad 
# https://askubuntu.com/questions/57079/xubuntu-make-shiftnumpad-work-like-windows
# Set this command
# setxkbmap -option 'numpad:microsoft'
# as a startup application
#Search for Startup Applications > Add
#          Name: Make Shift+NumPad work like MS Windows
#Description: whatsoever
#   Command:setxkbmap -option 'numpad:microsoft'
# or just
#In newer versions (eg.Ubuntu 18.04) look at Tweaks> Keyboard and Mouse>Additional Layout options>Miscellaneous compatibility options>"Num Lock on: digits; Shift for arrow keys. Num Lock off: arrow keys (as in Windows)"

# Install Microsoft fonts
sudo apt-get install ttf-mscorefonts-installer

# fix cedilha
source fixes/fix-cedilla
