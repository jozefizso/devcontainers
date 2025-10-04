#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

check "distro" lsb_release -c

check "php" php --version
check "apache2ctl" which apache2ctl

# Report result
reportResults
