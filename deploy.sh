#!/bin/bash -e

set -euf -o pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/deps/_/docker-builder/deploy.sh
$DIR/deps/_/extension-kubespec/apply_specs.py
