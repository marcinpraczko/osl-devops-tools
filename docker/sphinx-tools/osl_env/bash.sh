#!/usr/bin/env bash

# Simple script for adding running this docker as function

# TODO: Make this generated automatically
OSL_SPHINX_TOOLS_VERSION="0.2.2"

function _osl_sphinx_tools_init_build_docs() {
    local VERSION="latest"
    sudo docker run --rm -it \
        --hostname="docker-osl-sphinx-tools-init" \
        -v $(pwd)/docs:/docs/sphinx-tools osl/sphinx-tools-init:"${VERSION}" \
            /usr/bin/make -C /docs/sphinx-tools/ html
}

function _osl_sphinx_tools() {
    local VERSION="${OSL_SPHINX_TOOLS_VERSION}"

    # TODO: Confirm whether name matter or whether can be random
    #    local NEW_ID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)
    # --name=osl-sphinx-tools-"${NEW_ID}" \

    sudo docker run --rm -it \
        --hostname="docker-osl-sphinx-tools" \
        -p 80:80 \
        -v `pwd`:/code \
        -w '/code/docs' \
        osl/sphinx-tools:"${VERSION}" /bin/bash
}
alias osl_run_sphinx_tools='_osl_sphinx_tools'

function _osl_sphinx_tools_make_html() {
    local VERSION="${OSL_SPHINX_TOOLS_VERSION}"

    sudo docker run --rm -it \
        --hostname="docker-osl-sphinx-tools" \
        -p 80:80 \
        -v `pwd`:/code \
        -w '/code/docs' \
        osl/sphinx-tools:"${VERSION}" make html
}
alias osl_run_sphinx_tools_make_html='_osl_sphinx_tools_make_html'
