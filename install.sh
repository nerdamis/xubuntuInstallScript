## Enable sources, add PPAs and update sources
sudo sed 's/# deb/deb/' -i /etc/apt/sources.list
sudo add-apt-repository ppa:dyatlov-igor/la-capitaine

sudo apt update
sudo apt upgrade

## Installing from the APT-Sources
sudo apt install nano fonts-powerline gdebi tlp tlp-rdw redshift-gtk la-capitaine-icon-them la-capitaine-cursor-theme arc-theme openshot chromium-browser chromium-codecs-ffmpeg-extra chromium-chromedriver steam-installer mpv zsh git wget plank curl

## Adding Google Chrome PPA, cause wget might have not existed before on that system
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt update
sudo apt install google-chrome-beta

## install shit
sudo snap install spotify discord docker
sudo snap install notepadqq --channel
sudo snap install intellij-idea-community --channel
sudo snap install goland --channel
sudo snap install nextcloud-client --channel
sudo snap install telegram-desktop --channel
sudo snap install discord --channel 
sudo snap install openra --channel 
sudo snap install play0ad --channel
sudo snap install minecraft --channel
sudo snap install vscode --channel 
sudo snap install android-studio --channel
sudo snap install gimp --channel

## install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## now just change the theme to ARC-DARK,
## the Icons and Cursors to LA CAPITAINE and the fonts to GARUDA,
## and the console font to SOURCE CODE PRO FOR POWERLINE
