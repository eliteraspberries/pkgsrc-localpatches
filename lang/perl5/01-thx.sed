/^#/!s/aTHX_ /aTHX, /g
/^#/!s/pTHX_ /pTHX, /g
/^#/!s/aTHX,/my_perl,/g
/^#/!s/pTHX__VALUE_/pTHX__VALUE,/g
/^#/!s/pTHX__VALUE/,(void *)my_perl/g
/^#/!s/pTHX,/PerlInterpreter *my_perl,/g
