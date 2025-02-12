
// -----------
// This file was generated by riscv_ctg (https://github.com/riscv-software-src/riscv-ctg)
// version   : 0.12.2
// timestamp : Tue Oct 29 08:33:45 2024 GMT
// usage     : riscv_ctg \
//                  -- cgf //                  --cgf /home/saravana/riscv-arch-test/coverage/dataset.cgf \
//                  --cgf /home/saravana/riscv-arch-test/coverage/Zcmt/RV64/cm.jalt.cgf \
 \
//                  -- xlen 64  \
//                  --randomize \
// -----------
//
// -----------
// Copyright (c) 2020. RISC-V International. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause
// -----------
//
// This assembly file tests the cm.jalt instruction of the RISC-V RV64_Zca_Zcmt extension for the cm.jalt covergroup.
// 
#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV64I_Zca_Zcmt")

.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*I.*Zca.*Zcmt.*);def TEST_CASE_1=True;",cm.jalt)

RVTEST_SIGBASE(x1,signature_x1_1)

inst_0:
// imm_val >= 32 and imm_val < 256, 
// opcode: opcode: cm.jalt; immval:0xaf ;
TEST_CMJALT(x2,cm.jalt,0xaf,x1)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
.word 0xabecafeb
.word 0xbecafeba
.word 0xecafebab
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;



signature_x1_0:
    .fill 0*((XLEN/8)/4),4,0xdeadbeef


signature_x1_1:
    .fill 1*((XLEN/8)/4),4,0xdeadbeef

#ifdef rvtest_mtrap_routine
tsig_begin_canary:
CANARY;

mtrap_sigptr:
    .fill 64*XLEN/32,4,0xdeadbeef

tsig_end_canary:
CANARY;
#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*XLEN/32,4,0xdeadbeef

#endif


sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
