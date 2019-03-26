all: home git gnome

gnome:
	gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
	gsettings set org.gnome.desktop.session idle-delay 3600
	gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false

home:
	cp src/.bash_aliases ~
	cp src/.gitconfig ~
	cp src/.gitignore ~

git: home
	git config --global core.hooksPath /usr/bin
	git config --global core.excludesfile ~/.gitignore
