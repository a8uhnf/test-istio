#!/usr/bin/env bash

rm test-1
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o test-1 main.go
docker build -t a8uhnf/test-1:1.0 .
rm test-1
docker push a8uhnf/test-1:1.0