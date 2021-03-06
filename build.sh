#!/bin/bash

for GOOS in darwin linux windows; do
    for GOARCH in 386 amd64; do
	if [ "$GOOS" = "windows" ]
	then
	    env GOOS=$GOOS GOARCH=$GOARCH go build -v -o bin/stattocsv-$GOOS-${GOARCH}.exe cmd/stattocsv/main.go
        else
	    env GOOS=$GOOS GOARCH=$GOARCH go build -v -o bin/stattocsv-$GOOS-$GOARCH cmd/stattocsv/main.go
        fi
    done
done
