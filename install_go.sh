#!/bin/bash


echo "Install the go binary"
SHA256SUM="fb26c30e6a04ad937bbc657a1b5bba92f80096af1e8ee6da6430c045a8db3a5b"
FILENAME="go1.11.4.linux-amd64.tar.gz"

wget -O "/tmp/$FILENAME" "https://dl.google.com/go/$FILENAME"

if [ "$(sha256sum $FILENAME | cut -d" " -f1)" != "$SHA256SUM" ]; then
    echo "[!] CHECKSUMS DOES NOT MATCH!"
fi

# Run as root
sudo tar -C '/usr/local' -xzf "/tmp/$FILENAME"

echo "Add /usr/local/go/bin/ to your PATH variable"
