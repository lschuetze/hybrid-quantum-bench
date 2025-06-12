#!/bin/bash
SCRIPT_PATH=`dirname $0`
source $SCRIPT_PATH/config.inc

source $VENV_PATH/bin/activate
python3 -m pip install -r ../requirements.txt
python3 -m pip install -r $HYBRID_QUANTUM_PATH/frontend/requirements.txt
python3 -m pip install -r $LLVM_PATH/mlir/python/requirements.txt
echo $HYBRID_QUANTUM_PATH/build/python_packages/quantum-mlir > $(python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())")/qir-python-bindings.pth