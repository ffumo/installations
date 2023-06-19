#!/usr/bin/bash
export PYTHON_VERSION=3.8.16
export PYTHON_MAJOR=3

cd Python-${PYTHON_VERSION}

pwd

LD_RUN_PATH=/usr/local/lib ./configure \
    --enable-shared \
    --enable-optimizations \
    --enable-ipv6 

LD_RUN_PATH=/usr/local/lib make
sudo LD_RUN_PATH=/usr/local/lib make altinstall
