#!/usr/bin/env bash

docker run --rm -it \
    --name=osl-sphinx-tools \
    --hostname=osl-sphinx-tools \
    -v `pwd`:/code osl/sphinx-tools:v0.1 /bin/bash
