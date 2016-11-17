/^#/!s/FAR //g
/^#/!s/EXTERN(\([^)]*\))/extern \1/g
/^#/!s/LOCAL(\([^)]*\))/static \1/g
/^#/!s/METHODDEF(\([^)]*\))/static \1/g
