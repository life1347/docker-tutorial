#!/bin/bash

# SUPER USEFUL for debugging
# https://coderwall.com/p/fkfaqq/safer-bash-scripts-with-set-euxo-pipefail
set -euxo pipefail

while true
do
    echo "Hello World"
    sleep 1
done
