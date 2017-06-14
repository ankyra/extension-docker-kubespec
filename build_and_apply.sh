#!/bin/bash -e

set -euf -o pipefail

deps/_/extension-docker/build_and_push_image.py "$@"

if [ "$INPUT_skip_kubespec" = "1" ] ; then 
    echo "Skipping kubespecs because skip_kubespec is set"
else
    deps/_/extension-kubespec/apply_specs.py "$@"
fi
