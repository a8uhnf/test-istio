#!/usr/bin/env bash

rm test-2
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o test-2 main.go
docker build -t a8uhnf/test-2:1.0 .
rm test-2
docker push a8uhnf/test-2:1.0