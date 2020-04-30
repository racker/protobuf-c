#!/bin/sh
apt-get update
apt-get install -y autoconf build-essential \
        zlib1g-dev uuid-dev libpcre3-dev libssl-dev libpq-dev \
        libxslt-dev libapr1-dev libaprutil1-dev xsltproc \
        libncurses5-dev python libsnmp-dev  pkg-config libtool autotools-dev libdbi-perl libprotobuf-dev  libprotoc-dev protobuf-compiler libmirprotobuf3
cd /vagrant/protobuf-c
git checkout george/fix16
export LD_LIBRARY_PATH=/usr/local/lib
./configure && make && make install



