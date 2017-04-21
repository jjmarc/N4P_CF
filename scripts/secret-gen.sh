#!/bin/sh

set -e

dir=$(pwd)

export GOPATH=$(pwd)/go
cd go/src/github.com/square/certstrap/
go build
export PATH=$PATH:$(pwd)
ls
cd ${dir}/updated-git/
echo $PATH
certstrap init --passphrase '' --common-name consulCA

git add .
git commit -m "updated"

echo "fin test"
