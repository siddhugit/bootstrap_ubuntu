#!/usr/bin/env bash

echo "Installing core development libraries (a lot of stuff :P)..."
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y  make \
                    build-essential \
                    gcc \
                    perl \
                    make \
                    openssh-server \
                    socat \
                    chrpath \
                    texinfo \
                    lzop \
                    valgrind \
                    doxygen \
                    cmake \
                    libudev-dev \
                    zstd \
                    libboost-dev \
                    qtbase5-dev \
                    xsltproc \
                    fop \
                    software-properties-common \
                    linux-headers-$(uname -r) \
                    libssl-dev \
                    libffi-dev \
                    zlib1g-dev \
                    libbz2-dev \
                    libreadline-dev \
                    libsqlite3-dev \
                    llvm \
                    libncurses5-dev \
                    libncursesw5-dev \
                    unixodbc \
                    unixodbc-dev \
                    libaio1 \
                    freetds-bin \
                    freetds-dev \
                    tdsodbc \
                    alien \
                    apt-transport-https \
                    ca-certificates \
                    git \
                    automake \
                    autoconf \
                    pkg-config \
                    libgtk-3-dev \
                    libtiff5-dev \
                    libjpeg8-dev \
                    zlib1g-dev \
                    libfreetype6-dev \
                    liblcms2-dev \
                    libwebp-dev \
                    tcl8.6-dev \
                    tk8.6-dev \
                    python-tk \
                    python3-pip \
                    vim \
                    curl \
                    nano \
                    members \
                    exfat-fuse \
                    unrar \
                    net-tools

# enable syntax highlighting for all the available languages
find /usr/share/nano/ -iname "*.nanorc" -exec echo include {} \; >> ~/.nanorc

echo "A lot of libraries have been installed for you :)"
