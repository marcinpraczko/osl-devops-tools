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

# -- Main code --
start_service_nginx

exec "$@"
