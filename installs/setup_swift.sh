#!/usr/bin/env bash

install binutils git gnupg2 libc6-dev libcurl4 libedit2 libgcc-9-dev libpython2.7 libsqlite3-0 libstdc++-9-dev libxml2 libz3-dev pkg-config tzdata zlib1g-dev -y 
wget -q -O - https://swift.org/keys/all-keys.asc | gpg --import - 
wget https://download.swift.org/swift-5.7-release/ubuntu2004/swift-5.7-RELEASE/swift-5.7-RELEASE-ubuntu20.04.tar.gz 
tar xzf swift-5.7-RELEASE-ubuntu20.04.tar.gz 
sudo mv swift-5.7-RELEASE-ubuntu20.04 /usr/share/swift
sudo rm swift-5.7-RELEASE-ubuntu20.04.tar.gz 
echo "export PATH=/usr/share/swift/usr/bin/:$PATH" >> ~/.bashrc
source ~/.bashrc