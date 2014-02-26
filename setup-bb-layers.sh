#!/bin/bash

# Setup bblayer paths for meta layers
# directory of script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# truncate last directory away
DIRECTORY="${SCRIPT_DIR%/*}"

# replace dummy path and create bblayers.conf
sed "s|REPLACE|$DIRECTORY|g" ${SCRIPT_DIR}/conf/bblayers.conf.in > ${SCRIPT_DIR}/conf/bblayers.conf
