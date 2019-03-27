all: home git gnome usrbin

gnome:
	gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
	gsettings set org.gnome.desktop.session idle-delay 3600
	gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false

home:
	cp src/.bash_aliases ~
	cp src/.gitconfig ~
	cp src/.gitignore ~

usrbin:
	cp bin/* /usr/bin/

git: home
	git config --global core.hooksPath /usr/bin
	git config --global core.excludesfile ~/.gitignore

apt:
	apt update
	apt install -y alsa-utils
	apt install -y entr
	apt install -y clang-format
	apt remove firefox firefox-esr
