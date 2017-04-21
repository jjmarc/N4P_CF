#!/bin/sh

set -e

export GOPATH=$(pwd)/go
cd go/src/github.com/square/certstrap/
ls
echo $GOPATH
ls $GOPATH
go build
ls
./bin/certstrap init --passphrase '' --common-name consulCA

echo "fin test"
