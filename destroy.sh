#!/bin/bash -e

set -euxf -o pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/deps/_/extension-docker/destroy.py "$@"
