#!/bin/sh
image=$1
pushd $1
extra_packages=$(grep -v '^#' extra_packages)
docker build --tag ii-$extra_packages --build-arg EXTRA_PACKAGES="$extra_packages" .
popd