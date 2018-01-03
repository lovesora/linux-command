#!/bin/bash
if ! command -v cpulimit > /dev/null 2>&1; then
    if ! command -v unzip > /dev/null 2>&1; then
        # 下载upzip
        yum install unzip
    fi
    # 下载cpulimit
    wget -O cpulimit.zip https://github.com/opsengine/cpulimit/archive/master.zip
    unzip cpulimit.zip
    rm -f cpulimit.zip
    mv cpulimit-master /etc/cpulimit-master
    cd /etc/cpulimit-master && make
    cp src/cpulimit /usr/bin
fi
