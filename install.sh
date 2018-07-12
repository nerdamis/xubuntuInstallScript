#!/bin/bash

PRIVATE_APT=""
PRIVATE_SNAP=""

if [ "$1" != "" ]
then
	case $1 in
		-p | --private )	shift
					PRIVATE_APT="calibre openshot steam-installer"
					PRIVATE_SNAP="spotify docker intellij-idea-community goland discord openra play0ad minecraft android-studio"
					;;
	esac
fi
	

## Enable sources, add PPAs and update sources
sudo sed 's/# deb/deb/' -i /etc/apt/sources.list
sudo add-apt-repository ppa:dyatlov-igor/la-capitaine

sudo apt update
sudo apt upgrade

## Installing from the APT-Sources
sudo apt install nano tmux fonts-powerline gdebi pdfsam tlp tlp-rdw thunderbird redshift-gtk la-capitaine-icon-theme la-capitaine-cursor-theme arc-theme chromium-browser chromium-codecs-ffmpeg-extra chromium-chromedriver mpv zsh git wget plank curl $PRIVATE_APT

## Adding Google Chrome PPA, cause wget might have not existed before on that system
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt update
sudo apt install google-chrome-beta

## install shit
sudo snap install notepadqq nextcloud-client telegram-desktop vscode gimp $PRIVATE_SNAP

## install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## now just change the theme to ARC-DARK,
## the Icons and Cursors to LA CAPITAINE and the fonts to GARUDA,
## and the console font to SOURCE CODE PRO FOR POWERLINE
