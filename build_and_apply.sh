#!/bin/bash -e

set -euxf -o pipefail

deps/_/extension-docker/build_and_push_image.py
deps/_/extension-kubespec/apply_specs.py
