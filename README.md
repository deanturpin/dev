# dev

Ubuntu devel with all the standard libraries for C++ dev. See the [Dockerfile](https://github.com/deanturpin/dev/blob/main/Dockerfile).

## gcc versions

```bash
bash-5.2$ docker run --rm -it dev bash

root@033f24d76543:~# date
Thu Apr 24 08:42:05 UTC 2025

root@033f24d76543:~# g++ --version
g++ (Ubuntu 14.2.0-19ubuntu2) 14.2.0
Copyright (C) 2024 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

root@033f24d76543:~# g++-15 --version
g++-15 (Ubuntu 15-20250404-0ubuntu1) 15.0.1 20250404 (experimental) [master r15-9193-g08e803aa9be]
Copyright (C) 2025 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

## All packages

Running the container will dump all dev package versions.

```bash
bash-5.2$ docker run --rm -it dev
     _                  _                    _          __  _
  __| | ___  __ _ _ __ | |_ _   _ _ __ _ __ (_)_ __    / /_| | _____   __
 / _` |/ _ \/ _` | '_ \| __| | | | '__| '_ \| | '_ \  / / _` |/ _ \ \ / /
| (_| |  __/ (_| | | | | |_| |_| | |  | |_) | | | | |/ / (_| |  __/\ V /
 \__,_|\___|\__,_|_| |_|\__|\__,_|_|  | .__/|_|_| |_/_/ \__,_|\___| \_/
                                      |_|
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                         Version               Architecture Description
+++-============================-=====================-============-=========================================================================
ii  arp-scan                     1.10.0-2build2        arm64        arp scanning and fingerprinting tool
ii  clang                        1:20.0-63ubuntu1      arm64        C, C++ and Objective-C compiler (LLVM based), clang binary
ii  cmake                        3.31.6-1ubuntu1       arm64        cross-platform, open-source make system
ii  curl                         8.12.1-3ubuntu1       arm64        command line tool for transferring data with URL syntax
ii  duf                          0.8.1-2               arm64        Disk Usage/Free Utility
ii  entr                         5.7-1                 arm64        Run arbitrary commands when files change
ii  figlet                       2.2.5-3               arm64        Make large character ASCII banners out of ordinary text
ii  file                         1:5.45-3build1        arm64        Recognize the type of data in a file using "magic" numbers
ii  fzf                          0.60.3-1              arm64        general-purpose command-line fuzzy finder
ii  g++-15                       15-20250404-0ubuntu1  arm64        GNU C++ compiler
ii  gdb                          16.2-8ubuntu1         arm64        GNU Debugger
ii  git                          1:2.48.1-0ubuntu1     arm64        fast, scalable, distributed revision control system
ii  htop                         3.4.0-2               arm64        interactive processes viewer
ii  iproute2                     6.14.0-1ubuntu1       arm64        networking and traffic control tools
ii  iputils-ping                 3:20240905-1ubuntu1   arm64        Tools to test the reachability of network hosts
ii  iputils-tracepath            3:20240905-1ubuntu1   arm64        Tools to trace the network path to a remote host
ii  libbenchmark-dev:arm64       1.9.1-1               arm64        Microbenchmark support library, development files
ii  libgtest-dev:arm64           1.16.0-1              arm64        Google's framework for writing C++ tests
ii  libpcap-dev:arm64            1.10.5-2ubuntu1       arm64        development library for libpcap (transitional package)
ii  libtbb-dev:arm64             2022.0.0-2            arm64        parallelism library for C++ - development files
ii  lldb:arm64                   1:20.0-63ubuntu1      arm64        Next generation, high-performance debugger
ii  make                         4.4.1-1               arm64        utility for directing compilation
ii  mold                         2.37.1+dfsg-1         arm64        Drop-in linker
ii  mtr                          0.95-1.1ubuntu1       arm64        Full screen ncurses and X11 traceroute tool
ii  neofetch                     7.1.0-4ubuntu1        all          Shows Linux System Information with Distribution Logo
ii  netcat-traditional           1.10-50               arm64        TCP/IP swiss army knife
ii  ninja-build                  1.12.1-1              arm64        small build system closest in spirit to Make
ii  nmap                         7.95+dfsg-2           arm64        The Network Mapper
ii  pandoc                       3.1.11.1+ds-2         arm64        general markup converter
ii  parallel                     20240222+ds-2         all          build and execute command lines from standard input in parallel
ii  python3                      3.13.3-1              arm64        interactive high-level object-oriented language (default python3 version)
ii  python3-all-venv             3.13.3-1              arm64        package depending on all supported Python 3 venv modules
ii  python3-pip                  25.0+dfsg-1           all          Python package installer
ii  silversearcher-ag            2.2.0+git20200805-1.2 arm64        very fast grep-like program, alternative to ack
ii  sloccount                    2.26+ds-1             arm64        programs for counting physical source lines of code (SLOC)
ii  stress                       1.0.7-1               arm64        tool to impose load on and stress test a computer system
ii  time                         1.9-0.2build1         arm64        GNU time program for measuring CPU resource usage
ii  tmux                         3.5a-3                arm64        terminal multiplexer
ii  tree                         2.1.1-2ubuntu3        arm64        displays an indented directory tree, in color
ii  ubuntu-release-upgrader-core 1:25.04.14            all          manage release upgrades
ii  vim                          2:9.1.0967-1ubuntu4   arm64        Vi IMproved - enhanced vi editor
 _   _ _                 _           ____  ____   ___  _  _
| | | | |__  _   _ _ __ | |_ _   _  |___ \| ___| / _ \| || |
| | | | '_ \| | | | '_ \| __| | | |   __) |___ \| | | | || |_
| |_| | |_) | |_| | | | | |_| |_| |  / __/ ___) | |_| |__   _|
 \___/|_.__/ \__,_|_| |_|\__|\__,_| |_____|____(_)___/   |_|

  ______  _            _            ____         __  __ _     __
 / /  _ \| |_   _  ___| | ___   _  |  _ \ _   _ / _|/ _(_)_ __\ \
| || |_) | | | | |/ __| |/ / | | | | |_) | | | | |_| |_| | '_ \| |
| ||  __/| | |_| | (__|   <| |_| | |  __/| |_| |  _|  _| | | | | |
| ||_|   |_|\__,_|\___|_|\_\\__, | |_|    \__,_|_| |_| |_|_| |_| |
 \_\                        |___/                             /_/

sudo apt install --yes vim git curl file htop parallel tree tmux duf    make cmake ninja-build vim time mold entr       g++-15 gdb lldb clang   libgtest-dev libbenchmark-dev libtbb-dev libpcap-dev   python3 python3-pip python3-all-venv    ubuntu-release-upgrader-core sloccount pandoc   iputils-ping iputils-tracepath iproute2 nmap arp-scan netcat-traditional mtr silversearcher-ag fzf stress      neofetch figlet
```
