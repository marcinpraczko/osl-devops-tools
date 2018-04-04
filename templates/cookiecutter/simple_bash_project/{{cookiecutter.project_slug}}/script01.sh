#!/usr/bin/env bash

# {{ cookiecutter.project_slug }}

echo "Simple script - still not as expected"

while getopts :hf: OPT; do
    case $OPT in
	h|+h)
	    echo "WIP: Usage / Help"
	    ;;
	f|+f)
	    echo "WIP: Args: $OPTARG"
	    ;;
	*)
	    echo "usage: ${0##*/} [+-hf ARG] [--] ARGS..."
	    exit 2
    esac
done
shift $(( OPTIND - 1 ))
OPTIND=1
