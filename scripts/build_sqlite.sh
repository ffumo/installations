#!/usr/bin/bash
SQLITE_VER=342000

echo "Download Sqlite3 from https://www.sqlite.org/2023/sqlite-autoconf-${SQLITE_VER}.tar.gz"
wget https://www.sqlite.org/2023/sqlite-autoconf-${SQLITE_VER}.tar.gz

echo "Un-tar"
tar -xzf sqlite-autoconf-${SQLITE_VER}.tar.gz

cd sqlite-autoconf-${SQLITE_VER}

echo "Build and install SQlite3"

./configure
make
sudo make install

echo "Installed SQLite"
sqlite3 --version

