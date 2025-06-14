#!/bin/bash

if [[ -f /var/www/html/index.html ]]; then
    if nc -z 127.0.0.1 80 2> /dev/null; then
        exit 0  # Success
    fi
fi

exit 1  # Failure
