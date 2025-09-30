#!/bin/bash
SCRIPT_PATH=`dirname $0`
source $SCRIPT_PATH/config.inc

exec $HYBRID_QUANTUM_PATH/build/bin/quantum-opt "$@"