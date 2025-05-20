#!/bin/bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CERT_DIR="$SCRIPT_DIR/../.docker/nginx/certs"

source "$SCRIPT_DIR/../.env"

mkdir -p "$CERT_DIR"
cd "$CERT_DIR"
mkcert "$DOMAIN"

echo "✅ Certificat signé généré dans $CERT_DIR"