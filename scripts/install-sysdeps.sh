#!/bin/bash

# What distro?
apt-get --version &>/dev/null

if [ $? -eq 0 ]; then
    distro="debian"
fi

case "$distro" in
    debian)
        apt-get install -y --no-install-recommends \
            libgstrtspserver-1.0-dev
        ;;
    *)
        >&2 echo "Unsupported distro"
        exit 1
esac

