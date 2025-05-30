FROM ubuntu:devel

# All the things we like
ENV PACKAGES "vim git curl file htop parallel tree tmux duf" \
	"make cmake ninja-build vim time mold entr" \
	"g++-15 gdb lldb clang" \
	"libgtest-dev libbenchmark-dev libtbb-dev libpcap-dev" \
	"python3 python3-pip python3-all-venv" \
	"ubuntu-release-upgrader-core sloccount pandoc" \
	"iputils-ping iputils-tracepath iproute2 nmap arp-scan netcat-traditional mtr silversearcher-ag fzf stress" \
	"neofetch figlet"

RUN apt update && \
	apt full-upgrade --yes && \
	apt install --yes $PACKAGES && \
	get-oui

WORKDIR /root

CMD figlet deanturpin/dev && \
    dpkg -l $PACKAGES && \
    . /etc/os-release && figlet $NAME $VERSION && \
    echo && \ 
    echo "sudo apt install --yes $PACKAGES"
