#!/bin/bash

# make script fail on first error
set -e
# make SCRIPT_PATH absolute
pushd `dirname $0` > /dev/null
SCRIPT_PATH=`pwd`
popd > /dev/null

source $SCRIPT_PATH/config-extra.inc

source $VENV_PATH/bin/activate