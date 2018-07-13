#!/usr/bin/env bash

# Simple task to build docs from this project by using docker container (from this project).

set -e
source osl_env/bash.sh

if [ ! -d "docs/build" ]; then
    mkdir -p "docs/build/html"
fi

docker build -t osl/sphinx-tools-init:latest .

_osl_sphinx_tools_init_build_docs
