#!/usr/bin/env bash

# Simple script for adding running this docker as function

function _osl_sphinx_tools_init_build_docs() {
    local VERSION="latest"
    docker run --rm -it \
        --hostname="osl-sphinx-tools-init" \
        -v $(pwd)/docs:/docs/sphinx-tools osl/sphinx-tools-init:"${VERSION}" \
            /usr/bin/make -C /docs/sphinx-tools/ html
}

function _osl_sphinx_tools() {
    local VERSION="v0.2.1"

# TODO: Confirm whether name matter or whether can be random
#    local NEW_ID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)
# --name=osl-sphinx-tools-"${NEW_ID}" \

    docker run --rm -it \
        --hostname="osl-sphinx-tools" \
        -p 80:80 \
        -v `pwd`:/code osl/sphinx-tools:"${VERSION}" /bin/bash
}
alias osl_run_sphinx_tools='_osl_sphinx_tools'
