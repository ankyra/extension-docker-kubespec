#!/bin/bash -e

set -euf -o pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/deps/_/extension-docker/build_and_push_image.py "$@"
