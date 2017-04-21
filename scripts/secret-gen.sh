#!/bin/sh

set -e

export gopath=$(pwd)/gopath:$(pwd)/go/src/github.com/square/certstrap/Godeps/_workspace
cd go/src/github.com/square/certstrap/
ls
go build
ls
./bin/certstrap init --passphrase '' --common-name consulCA

echo "fin test"
