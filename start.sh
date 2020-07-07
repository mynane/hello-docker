#!/bin/bash

docker build . -t huazaierli/hello-docker:1.0.0

docker rm -f huazaierli/hello-docker

docker run -d -p 8080:8080  --name hello-docker huazaierli/hello-docker:1.0.0

