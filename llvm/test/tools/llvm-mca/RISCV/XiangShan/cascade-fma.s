# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=riscv64 -mcpu=xiangshan-nanhu < %s | FileCheck %s

# Test XiangShan FuDian's cascade FMA, CPI = 3
fmadd.s fa0, fa1, fa2, fa0

# CHECK:      Iterations:        100
# CHECK-NEXT: Instructions:      100
# CHECK-NEXT: Total Cycles:      305
# CHECK-NEXT: Total uOps:        100

# CHECK:      Dispatch Width:    6
# CHECK-NEXT: uOps Per Cycle:    0.33
# CHECK-NEXT: IPC:               0.33
# CHECK-NEXT: Block RThroughput: 0.3

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      5     0.25                        fmadd.s	fa0, fa1, fa2, fa0

# CHECK:      Resources:
# CHECK-NEXT: [0.0] - XS2ALU
# CHECK-NEXT: [0.1] - XS2ALU
# CHECK-NEXT: [0.2] - XS2ALU
# CHECK-NEXT: [0.3] - XS2ALU
# CHECK-NEXT: [1.0] - XS2FMAC
# CHECK-NEXT: [1.1] - XS2FMAC
# CHECK-NEXT: [1.2] - XS2FMAC
# CHECK-NEXT: [1.3] - XS2FMAC
# CHECK-NEXT: [2.0] - XS2FMISC
# CHECK-NEXT: [2.1] - XS2FMISC
# CHECK-NEXT: [3.0] - XS2LD
# CHECK-NEXT: [3.1] - XS2LD
# CHECK-NEXT: [4.0] - XS2MDU
# CHECK-NEXT: [4.1] - XS2MDU
# CHECK-NEXT: [5]   - XS2MISC
# CHECK-NEXT: [6.0] - XS2ST
# CHECK-NEXT: [6.1] - XS2ST

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0.0]  [0.1]  [0.2]  [0.3]  [1.0]  [1.1]  [1.2]  [1.3]  [2.0]  [2.1]  [3.0]  [3.1]  [4.0]  [4.1]  [5]    [6.0]  [6.1]
# CHECK-NEXT:  -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0.0]  [0.1]  [0.2]  [0.3]  [1.0]  [1.1]  [1.2]  [1.3]  [2.0]  [2.1]  [3.0]  [3.1]  [4.0]  [4.1]  [5]    [6.0]  [6.1]  Instructions:
# CHECK-NEXT:  -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -     fmadd.s	fa0, fa1, fa2, fa0
