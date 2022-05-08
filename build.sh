#!/bin/sh
image=$1
pushd $1
apt_packages=$(grep -v '^#' apt.txt)
docker build --tag ii-$apt_packages --build-arg APT_PACKAGES="$apt_packages" .
popd