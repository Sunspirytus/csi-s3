#!/bin/bash
tag="v1.4.0"

go build

docker build -f ./Dockerfile -t 172.22.170.141:30502/library/csi-s3:$tag .

docker push 172.22.170.141:30502/library/csi-s3:$tag

rm -rf s3csi
