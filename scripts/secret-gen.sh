#!/bin/sh

set -e

export gopath=$(pwd)/gopath:$(pwd)/gopath/src/github.com/square/certstrap/Godeps/_workspace
cd gopath/src/github.com/square/certstrap/
ls
./certstrap.go init --passphrase '' --common-name consulCA

echo "fin test"
