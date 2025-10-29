# Install and set CH locale
sudo apt-get install -y locales language-pack-de
sudo update-locale LANG=de_CH.UTF-8 LC_CTYPE=de_CH.UTF-8
exec $SHELL
