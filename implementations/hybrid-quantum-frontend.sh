#!/bin/bash
SCRIPT_PATH=`dirname $0`
source $SCRIPT_PATH/config.inc

python3 $HYBRID_QUANTUM_PATH/frontend/qasm/qasm-import.py "$@"