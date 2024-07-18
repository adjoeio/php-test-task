#!/usr/bin/env bash
set -eo pipefail

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$script_dir"

docker build -f Dockerfile -t adjoe-test/php .
docker build -f Dockerfile-awscli -t adjoe-test/awscli .

cd -