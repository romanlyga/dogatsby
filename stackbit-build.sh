#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://staging.widget.stackbit.com/init.js 60255d53e683f800176de3c9

echo "stackbit-build.sh: finished build"
