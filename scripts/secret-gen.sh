#!/bin/sh

set -e

export gopath=$(pwd)/gopath:$(pwd)/gopath/src/test
cd gopath/src/test/

go get -v github.com/square/certstrap

echo "fin test"
