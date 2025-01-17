# some commands taken from https://itsfoss.com/free-up-space-ubuntu-linux/

# remove no longer required packages
sudo apt-get autoremove

# remove apt cache
# check how much space will be released
sudo du -sh /var/cache/apt
# remove only part of the cache
sudo apt-get autoclean
# remove everything
sudo apt-get clean

# Clear systemd journal logs
# check how much space will be freed
journalctl --disk-usage
# choose lower number of days to keep to delete more
sudo journalctl --vacuum-time=180d

# to check which packages would be uninstalled if you run the command below
conda clean --all --dry-run
# remove packages no longer used
conda clean --all


# to clean linux cache. Change number of days to remove more or less
# https://askubuntu.com/a/732281/315699
# to check 
find ~/.cache/ -depth -type f -atime +365
# to delete
find ~/.cache/ -depth -type f -atime +365 -delete


# if using spotify, check https://community.spotify.com/t5/Desktop-Linux/Linux-Cache-Location-not-being-respected/td-p/1266411 to change cache storage location
# $rm -rf <current cache dir> 
# $ln -s <new cache location in HDD. e.g. /home/homero/hd/software/spotify_cache/> <current cache dir>  # creates link to new location
