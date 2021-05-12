# Fedora Setup

Notes on how I setup my Fedora desktop systems...

*NOTE:* There is no order to logical order to these. The notes are a combination of me adding packages as needed, and reviewing command history.

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
	pip install python-language-server black pyflakes pycodestyle

## Emacs

	sudo dnf install emacs
	cp .emacs ~/

*NOTE:* After install, run the following from within Emacs to install the packages specified in the config.

M-x package-refresh-contents
M-x package-install-selected-packages


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

### Configuration

* https://rclone.org/b2/
* https://rclone.org/crypt/

## R / R Studio

	sudo dnf install R rstudio-desktop libcurl-devel openssl-devel

## ClamAV

	sudo dnf install clamav clamav-update
	sudo systemctl enable clamav-freshclam
	sudo systemctl start clamav-freshclam

## 7-Zip

	sudo dnf install p7zip p7zip-plugins

## KiCad

	sudo dnf install kicad
	cd Documents/Electronics/
	mkdir Kicad_Library
	cd Kicad_Library/
	git clone https://github.com/Digi-Key/digikey-kicad-library.git

## Zotero

    flatpak install flathub org.zotero.Zotero

## AppIndicator

    sudo dnf install gnome-shell-extension-appindicator
    gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com
