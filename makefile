all: home apt git bin

upgrade:
	apt full-upgrade --yes

apt:
	apt update --yes
	apt install --yes vim git time clang-format iceweasel
	apt remove --yes firefox

gnome:
	gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
	gsettings set org.gnome.desktop.session idle-delay 3600
	gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false

home:
	cp src/.bash_aliases ~
	cp src/.gitconfig ~
	cp src/.gitignore ~

bin:
	cp src/waitandcompile /usr/bin
	cp src/waitandrun /usr/bin
	cp src/waitandmake /usr/bin
	cp src/vendor-lookup /usr/bin
	cp src/check-commits /usr/bin

githooks:
	mkdir $@

git: githooks home
	cp src/pre-commit ~/githooks
	git config --global core.hooksPath ~/githooks
	git config --global core.excludesfile ~/.gitignore
