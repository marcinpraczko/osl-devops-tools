#!/usr/bin/env bash

# TODO: Nice example for future:
#       - https://www.camptocamp.com/en/actualite/flexible-docker-entrypoints-scripts/

set -e

# Always run nginx in background
function start_service_nginx() {
    echo "[In docker] Staring nginx service [port 80]..."
    /usr/sbin/nginx
    status=$?
    if [ $status -ne 0 ]; then
      echo "Failed to start nginx: $status"
      exit $status
    fi
}

# Display welcome message when working in interactive mode
function interactive_welcome_message() {
    if [ -t 1 ]; then
        cat << EOF

Welcome in interactive mode for sphinx-tools docker containers.
Build documentation can be automated based on detected changes in docs/source folder.

To achieve this please run commands:

  cd /code/docs/source
  /tools/scripts/onchange.sh make -C .. html

EOF
    fi
}


# -- Main code --
start_service_nginx
interactive_welcome_message

exec "$@"
