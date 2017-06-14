#!/bin/bash -e

set -euf -o pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/deps/_/extension-docker/build_and_push_image.py "$@"

if [ "$INPUT_skip_kubespec" = "1" ] ; then 
    echo "Skipping kubespecs because skip_kubespec is set"
else
    $DIR/deps/_/extension-kubespec/apply_specs.py "$@"
fi
