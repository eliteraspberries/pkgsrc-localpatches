/^#/!s/dSP;/SV **sp = PL_stack_sp;/g
/^#/!s/dVAR;/dNOOP;/g
/^#/!s/dTARGET;/SV * GETTARGET;/g
/^#/!s/GETTARGET/targ = PAD_SV(PL_op->op_targ)/g
/^#/!s/dMARK;/SV **mark = PL_stack_base + POPMARK;/g
/^#/!s/dNOOP;/;/g
