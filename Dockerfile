FROM ubuntu:devel

# All the things we like
ENV PACKAGES "vim git curl file htop parallel tree tmux duf" \
	"make cmake ninja-build vim time neofetch figlet mold entr" \
	"g++-14 gdb lldb clang" \
	"libgtest-dev libbenchmark-dev libtbb-dev libpcap-dev" \
	"python3 python3-pip python3-all-venv" \
	"ubuntu-release-upgrader-core" \
	"iputils-ping iproute2 nmap arp-scan netcat-traditional"

RUN apt update && \
	apt full-upgrade --yes && \
	apt install --yes $PACKAGES && \
	get-oui

WORKDIR /root

CMD figlet deanturpin/dev && \
    neofetch --stdout && \
    dpkg -l $PACKAGES && \
    cat /etc/os-release && \
    lscpu
