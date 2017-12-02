/^FT_BEGIN_HEADER/d
/^FT_END_HEADER/d
s/FT_BASE(\([^)]*\))/extern \1/g
