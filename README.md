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

## C++ Dev Environment

sudo dnf install ccls boost-devel cmake make gtkmm30-devel glade
cp .clang-format ~/

## unixODBC

sudo dnf install unixODBC-devel sqliteodbc

## emacs

sudo dnf install emacs
cp .emacs ~/

M-x package-refresh-contents
M-x package-install-selected-packages

## gitg

sudo dnf install gitg

## Ghidra

sudo dnf install java-11-openjdk-devel
unzip ghidra_9.1.2_PUBLIC_20200212.zip
sudo mv ghidra_9.1.2_PUBLIC /opt/
sudo chown -R root:root ghidra_9.1.2_PUBLIC/
sudo ln -s /opt/ghidra_9.1.2_PUBLIC/ghidraRun ghidra

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
