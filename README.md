# Fedora Setup

Notes on how I setup my Fedora desktop systems...

## dnf-plugin-system-upgrade

sudo dnf install dnf-plugin-system-upgrade

## KeePassXC

sudo dnf install keepassxc

## Firefox Hardware Acceleration (ffmpeg / VA-API)

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install ffmpeg libva libva-utils

In Firefox, about:config....

gfx.webrender.enabled = True
media.ffmpeg.vaapi.enabled = True

## Chromium

sudo dnf install chromium

## Remmina

sudo dnf install remmina

## Python Dev Environment

sudo dnf install python3-devel

mkdir -p ~/.venv/
python3 -m venv ~/.venv/py3dev
source .venv/py3dev/bin/activate
pip install python-language-server black pyflakes

## emacs

sudo dnf install emacs
cp .emacs ~/

M-x package-refresh-contents
M-x package-install-selected-packages

## gitg

sudo dnf install gitg

## libvirt-client

sudo dnf install libvirt-client

## GIMP

sudo dnf install gimp

## Hugo

tar zxf hugo_0.74.3_Linux-64bit.tar.gz
sudo mv hugo /usr/local/bin
sudo chown root:root /usr/local/bin/hugo

## MPLAB X + XC8 Compiler

chmod 755 xc8-v2.30-full-install-linux-x64-installer.run 
sudo ./xc8-v2.30-full-install-linux-x64-installer.run 
tar xf MPLABX-v5.40-linux-installer.tar 
sudo dnf install libX11.i686 libXext.i686 libgcc.i686 libstdc++.i686 expat.i686
sudo ./MPLABX-v5.40-linux-installer.sh 

## Syncthing

sudo dnf install syncthing
systemctl --user enable --now syncthing.service

## rclone

sudo dnf install rclone

https://rclone.org/b2/
https://rclone.org/crypt/

## IPFS Desktop

sudo dnf install gnome-shell-extension-appindicator
gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com
sudo dnf install ipfs-desktop-0.13.2-linux-x86_64.rpm

## Pidgin
sudo dnf install pidgin purple-facebook purple-telegram install pidgin-indicator

## Bluetooth Audio Codecs
sudo dnf install pulseaudio-module-bluetooth-freeworld --allowerasing

## R / R Studio

sudo dnf install R rstudio-desktop

## ClamAV

sudo dnf install clamav clamav-update
sudo systemctl enable clamav-freshclam
sudo systemctl start clamav-freshclam

