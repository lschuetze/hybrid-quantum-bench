#!/bin/bash

FILE="large/wstate_n76"

echo "Step 0: QASM Import"
time implementations/hybrid-quantum-frontend.sh -r -i `pwd`/benchmarks/qasmbench/large/cc_n151/cc_n151.qasm -o `pwd`/benchmarks/compiler_generated/large/cc_n151.mlir

echo "Step 1: Inline and CSE"
time implementations/hybrid-quantum.sh `pwd`/benchmarks/compiler_generated/`echo $FILE`.mlir -inline -cse > `pwd`/benchmarks/compiler_generated/`echo $FILE`_1.mlir

echo "Step 2: Lift QILLR to Quantum"
time implementations/hybrid-quantum.sh `pwd`/benchmarks/compiler_generated/`echo $FILE`_1.mlir -lift-qillr-to-quantum > `pwd`/benchmarks/compiler_generated/`echo $FILE`_2.mlir

echo "Step 3: Hoist Load Store"
time implementations/hybrid-quantum.sh `pwd`/benchmarks/compiler_generated/`echo $FILE`_2.mlir -hoist-load-store > `pwd`/benchmarks/compiler_generated/`echo $FILE`_3.mlir

echo "Step 4: Eliminate Load Store"
time implementations/hybrid-quantum.sh `pwd`/benchmarks/compiler_generated/`echo $FILE`_3.mlir -eliminate-load-store > `pwd`/benchmarks/compiler_generated/`echo $FILE`_4.mlir

 