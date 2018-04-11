#!/usr/bin/env bash

# Simple script for adding running this docker as function

function _osl_sphinx_tools() {
    local VERSION="v0.2.0"
    docker run --rm -it \
        --name=osl-sphinx-tools \
        --hostname="osl-sphinx-tools" \
        -v `pwd`:/code osl/sphinx-tools:"${VERSION}" /bin/bash
}

alias osl_run_sphinx_tools='_osl_sphinx_tools'
