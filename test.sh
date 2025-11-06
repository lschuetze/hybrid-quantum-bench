#!/bin/bash
source .venv/bin/activate
#rm benchmarks/compiler_generated/small/*.mlir
#rm benchmarks/compiler_generated/medium/*.mlir
#rm benchmarks/compiler_generated/large/*.mlir

#exec rebench test.conf test-hybrid-quantum-frontend -c
exec rebench test.conf test-hybrid-quantum-lift