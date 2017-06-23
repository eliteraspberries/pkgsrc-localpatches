/^#/!s/tTHX/PerlInterpreter */g
/^#/!s/pTHXx_/pTHXx,/g
/^#/!s/pTHXx/PerlInterpreter *my_perl/g
/^#/!s/pTHX__VALUE_/pTHX__VALUE,/g
/^#/!s/pTHX__VALUE/, (void *)my_perl/g
/^#/!s/pTHX__FORMAT/", Perl interpreter: 0x%p"/g
/^#/!s/pTHX_VALUE_/pTHX_VALUE,/g
/^#/!s/pTHX_VALUE/(void *)my_perl/g
/^#/!s/pTHX_FORMAT/"Perl interpreter: 0x%p"/g
/^#/!s/pTHX_9/10/g
/^#/!s/pTHX_8/9/g
/^#/!s/pTHX_7/8/g
/^#/!s/pTHX_6/7/g
/^#/!s/pTHX_5/6/g
/^#/!s/pTHX_4/5/g
/^#/!s/pTHX_3/4/g
/^#/!s/pTHX_2/3/g
/^#/!s/pTHX_12/13/g
/^#/!s/pTHX_1/2/g
/^#/!s/pTHX_/pTHX,/g
/^#/!s/pTHX/tTHX my_perl/g
/^#/!s/dTHXx/dTHX/g
/^#/!s/dTHXa(\([^)]*\))/pTHX = (tTHX)\1/g
/^#/!s/dTHX/pTHX = PERL_GET_THX/g
/^#/!s/aTHXx_/aTHXx,/g
/^#/!s/aTHXx/my_perl/g
/^#/!s/aTHXa(\([^)]*\))/aTHX = (tTHX)\1/g
/^#/!s/aTHX_/aTHX,/g
/^#/!s/aTHX/my_perl/g
