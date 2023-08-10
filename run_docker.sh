#!/bin/bash

docker run -it --rm -v /home/zichaohu:/home/zichaohu \
    -v /opt/libtorch:/opt/libtorch:ro -v /usr/local/cuda:/usr/local/cuda:ro \
     --network host zichao-docker
