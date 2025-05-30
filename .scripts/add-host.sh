#!/bin/bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
HOSTS_FILE="/etc/hosts"

source "$SCRIPT_DIR/../.env"

if grep -xq "127.0.0.1\t${DOMAIN}" /etc/hosts
then
    # code if found
    echo "✅ ${DOMAIN} already exists in ${HOSTS_FILE}"
else
    # code if not found
    echo "127.0.0.1\t${DOMAIN}" | sudo tee -a "$HOSTS_FILE" > /dev/null
    echo "✅ ${DOMAIN} added to ${HOSTS_FILE}"
fi
