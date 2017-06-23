--- ext/B/B.xs.orig	2017-04-23 12:23:37.000000000 -0400
+++ ext/B/B.xs	2017-04-23 12:21:14.000000000 -0400
@@ -672,38 +672,38 @@
     U8    type; /* if op_offset_special, access is handled on a case-by-case basis */
     U16 offset;
 } op_methods[] = {
-  { STR_WITH_LEN("next"),    OPp,    STRUCT_OFFSET(struct op, op_next),     },/* 0*/
+  { STR_WITH_LEN("next"),    OPp,    STRUCT_OFFSET(OP, op_next),     },/* 0*/
   { STR_WITH_LEN("sibling"), op_offset_special, 0,                          },/* 1*/
-  { STR_WITH_LEN("targ"),    PADOFFSETp, STRUCT_OFFSET(struct op, op_targ), },/* 2*/
-  { STR_WITH_LEN("flags"),   U8p,    STRUCT_OFFSET(struct op, op_flags),    },/* 3*/
-  { STR_WITH_LEN("private"), U8p,    STRUCT_OFFSET(struct op, op_private),  },/* 4*/
-  { STR_WITH_LEN("first"),   OPp,    STRUCT_OFFSET(struct unop, op_first),  },/* 5*/
-  { STR_WITH_LEN("last"),    OPp,    STRUCT_OFFSET(struct binop, op_last),  },/* 6*/
-  { STR_WITH_LEN("other"),   OPp,    STRUCT_OFFSET(struct logop, op_other), },/* 7*/
+  { STR_WITH_LEN("targ"),    PADOFFSETp, STRUCT_OFFSET(OP, op_targ), },/* 2*/
+  { STR_WITH_LEN("flags"),   U8p,    STRUCT_OFFSET(OP, op_flags),    },/* 3*/
+  { STR_WITH_LEN("private"), U8p,    STRUCT_OFFSET(OP, op_private),  },/* 4*/
+  { STR_WITH_LEN("first"),   OPp,    STRUCT_OFFSET(UNOP, op_first),  },/* 5*/
+  { STR_WITH_LEN("last"),    OPp,    STRUCT_OFFSET(BINOP, op_last),  },/* 6*/
+  { STR_WITH_LEN("other"),   OPp,    STRUCT_OFFSET(LOGOP, op_other), },/* 7*/
   { STR_WITH_LEN("pmreplstart"), op_offset_special, 0,                 },/* 8*/
-  { STR_WITH_LEN("redoop"),  OPp,    STRUCT_OFFSET(struct loop, op_redoop), },/* 9*/
-  { STR_WITH_LEN("nextop"),  OPp,    STRUCT_OFFSET(struct loop, op_nextop), },/*10*/
-  { STR_WITH_LEN("lastop"),  OPp,    STRUCT_OFFSET(struct loop, op_lastop), },/*11*/
-  { STR_WITH_LEN("pmflags"), U32p,   STRUCT_OFFSET(struct pmop, op_pmflags),},/*12*/
-  { STR_WITH_LEN("code_list"),OPp,   STRUCT_OFFSET(struct pmop, op_code_list),},/*13*/
-  { STR_WITH_LEN("sv"),      SVp,     STRUCT_OFFSET(struct svop, op_sv),    },/*14*/
-  { STR_WITH_LEN("gv"),      SVp,     STRUCT_OFFSET(struct svop, op_sv),    },/*15*/
-  { STR_WITH_LEN("padix"),   PADOFFSETp,STRUCT_OFFSET(struct padop, op_padix),},/*16*/
-  { STR_WITH_LEN("cop_seq"), U32p,    STRUCT_OFFSET(struct cop, cop_seq),   },/*17*/
-  { STR_WITH_LEN("line"),    line_tp, STRUCT_OFFSET(struct cop, cop_line),  },/*18*/
-  { STR_WITH_LEN("hints"),   U32p,    STRUCT_OFFSET(struct cop, cop_hints), },/*19*/
+  { STR_WITH_LEN("redoop"),  OPp,    STRUCT_OFFSET(LOOP, op_redoop), },/* 9*/
+  { STR_WITH_LEN("nextop"),  OPp,    STRUCT_OFFSET(LOOP, op_nextop), },/*10*/
+  { STR_WITH_LEN("lastop"),  OPp,    STRUCT_OFFSET(LOOP, op_lastop), },/*11*/
+  { STR_WITH_LEN("pmflags"), U32p,   STRUCT_OFFSET(PMOP, op_pmflags),},/*12*/
+  { STR_WITH_LEN("code_list"),OPp,   STRUCT_OFFSET(PMOP, op_code_list),},/*13*/
+  { STR_WITH_LEN("sv"),      SVp,     STRUCT_OFFSET(SVOP, op_sv),    },/*14*/
+  { STR_WITH_LEN("gv"),      SVp,     STRUCT_OFFSET(SVOP, op_sv),    },/*15*/
+  { STR_WITH_LEN("padix"),   PADOFFSETp,STRUCT_OFFSET(PADOP, op_padix),},/*16*/
+  { STR_WITH_LEN("cop_seq"), U32p,    STRUCT_OFFSET(COP, cop_seq),   },/*17*/
+  { STR_WITH_LEN("line"),    line_tp, STRUCT_OFFSET(COP, cop_line),  },/*18*/
+  { STR_WITH_LEN("hints"),   U32p,    STRUCT_OFFSET(COP, cop_hints), },/*19*/
 #ifdef USE_ITHREADS
-  { STR_WITH_LEN("pmoffset"),IVp,     STRUCT_OFFSET(struct pmop, op_pmoffset),},/*20*/
+  { STR_WITH_LEN("pmoffset"),IVp,     STRUCT_OFFSET(PMOP, op_pmoffset),},/*20*/
   { STR_WITH_LEN("filegv"),  op_offset_special, 0,                     },/*21*/
-  { STR_WITH_LEN("file"),    char_pp, STRUCT_OFFSET(struct cop, cop_file),  },/*22*/
+  { STR_WITH_LEN("file"),    char_pp, STRUCT_OFFSET(COP, cop_file),  },/*22*/
   { STR_WITH_LEN("stash"),   op_offset_special, 0,                     },/*23*/
   { STR_WITH_LEN("stashpv"), op_offset_special, 0,                     },/*24*/
-  { STR_WITH_LEN("stashoff"),PADOFFSETp,STRUCT_OFFSET(struct cop,cop_stashoff),},/*25*/
+  { STR_WITH_LEN("stashoff"),PADOFFSETp,STRUCT_OFFSET(COP,cop_stashoff),},/*25*/
 #else
   { STR_WITH_LEN("pmoffset"),op_offset_special, 0,                     },/*20*/
-  { STR_WITH_LEN("filegv"),  SVp,     STRUCT_OFFSET(struct cop, cop_filegv),},/*21*/
+  { STR_WITH_LEN("filegv"),  SVp,     STRUCT_OFFSET(COP, cop_filegv),},/*21*/
   { STR_WITH_LEN("file"),    op_offset_special, 0,                     },/*22*/
-  { STR_WITH_LEN("stash"),   SVp,     STRUCT_OFFSET(struct cop, cop_stash), },/*23*/
+  { STR_WITH_LEN("stash"),   SVp,     STRUCT_OFFSET(COP, cop_stash), },/*23*/
   { STR_WITH_LEN("stashpv"), op_offset_special, 0,                     },/*24*/
   { STR_WITH_LEN("stashoff"),op_offset_special, 0,                     },/*25*/
 #endif
@@ -1508,49 +1508,49 @@
 #define sv_I32p		0xA0000
 #define sv_U16p		0xB0000
 
-#define IV_ivx_ix	sv_IVp | STRUCT_OFFSET(struct xpviv, xiv_iv)
-#define IV_uvx_ix	sv_UVp | STRUCT_OFFSET(struct xpvuv, xuv_uv)
-#define NV_nvx_ix	sv_NVp | STRUCT_OFFSET(struct xpvnv, xnv_u.xnv_nv)
-
-#define PV_cur_ix	sv_STRLENp | STRUCT_OFFSET(struct xpv, xpv_cur)
-#define PV_len_ix	sv_STRLENp | STRUCT_OFFSET(struct xpv, xpv_len)
-
-#define PVMG_stash_ix	sv_SVp | STRUCT_OFFSET(struct xpvmg, xmg_stash)
-
-#define PVBM_useful_ix	sv_IVp | STRUCT_OFFSET(struct xpviv, xiv_u.xivu_iv)
-
-#define PVLV_targoff_ix	sv_U32p | STRUCT_OFFSET(struct xpvlv, xlv_targoff)
-#define PVLV_targlen_ix	sv_U32p | STRUCT_OFFSET(struct xpvlv, xlv_targlen)
-#define PVLV_targ_ix	sv_SVp | STRUCT_OFFSET(struct xpvlv, xlv_targ)
-#define PVLV_type_ix	sv_char_p | STRUCT_OFFSET(struct xpvlv, xlv_type)
-
-#define PVGV_stash_ix	sv_SVp | STRUCT_OFFSET(struct xpvgv, xnv_u.xgv_stash)
-#define PVGV_flags_ix	sv_STRLENp | STRUCT_OFFSET(struct xpvgv, xpv_cur)
-#define PVIO_lines_ix	sv_IVp | STRUCT_OFFSET(struct xpvio, xiv_iv)
-
-#define PVIO_page_ix	    sv_IVp | STRUCT_OFFSET(struct xpvio, xio_page)
-#define PVIO_page_len_ix    sv_IVp | STRUCT_OFFSET(struct xpvio, xio_page_len)
-#define PVIO_lines_left_ix  sv_IVp | STRUCT_OFFSET(struct xpvio, xio_lines_left)
-#define PVIO_top_name_ix    sv_char_pp | STRUCT_OFFSET(struct xpvio, xio_top_name)
-#define PVIO_top_gv_ix	    sv_SVp | STRUCT_OFFSET(struct xpvio, xio_top_gv)
-#define PVIO_fmt_name_ix    sv_char_pp | STRUCT_OFFSET(struct xpvio, xio_fmt_name)
-#define PVIO_fmt_gv_ix	    sv_SVp | STRUCT_OFFSET(struct xpvio, xio_fmt_gv)
-#define PVIO_bottom_name_ix sv_char_pp | STRUCT_OFFSET(struct xpvio, xio_bottom_name)
-#define PVIO_bottom_gv_ix   sv_SVp | STRUCT_OFFSET(struct xpvio, xio_bottom_gv)
-#define PVIO_type_ix	    sv_char_p | STRUCT_OFFSET(struct xpvio, xio_type)
-#define PVIO_flags_ix	    sv_U8p | STRUCT_OFFSET(struct xpvio, xio_flags)
-
-#define PVAV_max_ix	sv_SSize_tp | STRUCT_OFFSET(struct xpvav, xav_max)
-
-#define PVCV_stash_ix	sv_SVp | STRUCT_OFFSET(struct xpvcv, xcv_stash) 
-#define PVCV_gv_ix	sv_SVp | STRUCT_OFFSET(struct xpvcv, xcv_gv_u.xcv_gv)
-#define PVCV_file_ix	sv_char_pp | STRUCT_OFFSET(struct xpvcv, xcv_file)
-#define PVCV_outside_ix	sv_SVp | STRUCT_OFFSET(struct xpvcv, xcv_outside)
-#define PVCV_outside_seq_ix sv_U32p | STRUCT_OFFSET(struct xpvcv, xcv_outside_seq)
-#define PVCV_flags_ix	sv_U32p | STRUCT_OFFSET(struct xpvcv, xcv_flags)
+#define IV_ivx_ix	sv_IVp | STRUCT_OFFSET(XPVIV, xiv_iv)
+#define IV_uvx_ix	sv_UVp | STRUCT_OFFSET(XPVUV, xuv_uv)
+#define NV_nvx_ix	sv_NVp | STRUCT_OFFSET(XPVNV, xnv_u.xnv_nv)
+
+#define PV_cur_ix	sv_STRLENp | STRUCT_OFFSET(XPV, xpv_cur)
+#define PV_len_ix	sv_STRLENp | STRUCT_OFFSET(XPV, xpv_len)
+
+#define PVMG_stash_ix	sv_SVp | STRUCT_OFFSET(XPVMG, xmg_stash)
+
+#define PVBM_useful_ix	sv_IVp | STRUCT_OFFSET(XPVIV, xiv_u.xivu_iv)
+
+#define PVLV_targoff_ix	sv_U32p | STRUCT_OFFSET(XPVLV, xlv_targoff)
+#define PVLV_targlen_ix	sv_U32p | STRUCT_OFFSET(XPVLV, xlv_targlen)
+#define PVLV_targ_ix	sv_SVp | STRUCT_OFFSET(XPVLV, xlv_targ)
+#define PVLV_type_ix	sv_char_p | STRUCT_OFFSET(XPVLV, xlv_type)
+
+#define PVGV_stash_ix	sv_SVp | STRUCT_OFFSET(XPVGV, xnv_u.xgv_stash)
+#define PVGV_flags_ix	sv_STRLENp | STRUCT_OFFSET(XPVGV, xpv_cur)
+#define PVIO_lines_ix	sv_IVp | STRUCT_OFFSET(XPVIO, xiv_iv)
+
+#define PVIO_page_ix	    sv_IVp | STRUCT_OFFSET(XPVIO, xio_page)
+#define PVIO_page_len_ix    sv_IVp | STRUCT_OFFSET(XPVIO, xio_page_len)
+#define PVIO_lines_left_ix  sv_IVp | STRUCT_OFFSET(XPVIO, xio_lines_left)
+#define PVIO_top_name_ix    sv_char_pp | STRUCT_OFFSET(XPVIO, xio_top_name)
+#define PVIO_top_gv_ix	    sv_SVp | STRUCT_OFFSET(XPVIO, xio_top_gv)
+#define PVIO_fmt_name_ix    sv_char_pp | STRUCT_OFFSET(XPVIO, xio_fmt_name)
+#define PVIO_fmt_gv_ix	    sv_SVp | STRUCT_OFFSET(XPVIO, xio_fmt_gv)
+#define PVIO_bottom_name_ix sv_char_pp | STRUCT_OFFSET(XPVIO, xio_bottom_name)
+#define PVIO_bottom_gv_ix   sv_SVp | STRUCT_OFFSET(XPVIO, xio_bottom_gv)
+#define PVIO_type_ix	    sv_char_p | STRUCT_OFFSET(XPVIO, xio_type)
+#define PVIO_flags_ix	    sv_U8p | STRUCT_OFFSET(XPVIO, xio_flags)
+
+#define PVAV_max_ix	sv_SSize_tp | STRUCT_OFFSET(XPVAV, xav_max)
+
+#define PVCV_stash_ix	sv_SVp | STRUCT_OFFSET(XPVCV, xcv_stash) 
+#define PVCV_gv_ix	sv_SVp | STRUCT_OFFSET(XPVCV, xcv_gv_u.xcv_gv)
+#define PVCV_file_ix	sv_char_pp | STRUCT_OFFSET(XPVCV, xcv_file)
+#define PVCV_outside_ix	sv_SVp | STRUCT_OFFSET(XPVCV, xcv_outside)
+#define PVCV_outside_seq_ix sv_U32p | STRUCT_OFFSET(XPVCV, xcv_outside_seq)
+#define PVCV_flags_ix	sv_U32p | STRUCT_OFFSET(XPVCV, xcv_flags)
 
-#define PVHV_max_ix	sv_STRLENp | STRUCT_OFFSET(struct xpvhv, xhv_max)
-#define PVHV_keys_ix	sv_STRLENp | STRUCT_OFFSET(struct xpvhv, xhv_keys)
+#define PVHV_max_ix	sv_STRLENp | STRUCT_OFFSET(XPVHV, xhv_max)
+#define PVHV_keys_ix	sv_STRLENp | STRUCT_OFFSET(XPVHV, xhv_keys)
 
 # The type checking code in B has always been identical for all SV types,
 # irrespective of whether the action is actually defined on that SV.
@@ -1917,15 +1917,15 @@
 GvGP(gv)
 	B::GV	gv
 
-#define GP_sv_ix	(SVp << 16) | STRUCT_OFFSET(struct gp, gp_sv)
-#define GP_io_ix	(SVp << 16) | STRUCT_OFFSET(struct gp, gp_io)
-#define GP_cv_ix	(SVp << 16) | STRUCT_OFFSET(struct gp, gp_cv)
-#define GP_cvgen_ix	(U32p << 16) | STRUCT_OFFSET(struct gp, gp_cvgen)
-#define GP_refcnt_ix	(U32p << 16) | STRUCT_OFFSET(struct gp, gp_refcnt)
-#define GP_hv_ix	(SVp << 16) | STRUCT_OFFSET(struct gp, gp_hv)
-#define GP_av_ix	(SVp << 16) | STRUCT_OFFSET(struct gp, gp_av)
-#define GP_form_ix	(SVp << 16) | STRUCT_OFFSET(struct gp, gp_form)
-#define GP_egv_ix	(SVp << 16) | STRUCT_OFFSET(struct gp, gp_egv)
+#define GP_sv_ix	(SVp << 16) | STRUCT_OFFSET(GP, gp_sv)
+#define GP_io_ix	(SVp << 16) | STRUCT_OFFSET(GP, gp_io)
+#define GP_cv_ix	(SVp << 16) | STRUCT_OFFSET(GP, gp_cv)
+#define GP_cvgen_ix	(U32p << 16) | STRUCT_OFFSET(GP, gp_cvgen)
+#define GP_refcnt_ix	(U32p << 16) | STRUCT_OFFSET(GP, gp_refcnt)
+#define GP_hv_ix	(SVp << 16) | STRUCT_OFFSET(GP, gp_hv)
+#define GP_av_ix	(SVp << 16) | STRUCT_OFFSET(GP, gp_av)
+#define GP_form_ix	(SVp << 16) | STRUCT_OFFSET(GP, gp_form)
+#define GP_egv_ix	(SVp << 16) | STRUCT_OFFSET(GP, gp_egv)
 
 void
 SV(gv)
@@ -2280,23 +2280,23 @@
 MODULE = B	PACKAGE = B::PADNAME	PREFIX = Padname
 
 #define PN_type_ix \
-	sv_SVp | STRUCT_OFFSET(struct padname,xpadn_type_u.xpadn_typestash)
+	sv_SVp | STRUCT_OFFSET(PADNAME,xpadn_type_u.xpadn_typestash)
 #define PN_ourstash_ix \
-	sv_SVp | STRUCT_OFFSET(struct padname,xpadn_ourstash)
+	sv_SVp | STRUCT_OFFSET(PADNAME,xpadn_ourstash)
 #define PN_len_ix \
-	sv_U8p | STRUCT_OFFSET(struct padname,xpadn_len)
+	sv_U8p | STRUCT_OFFSET(PADNAME,xpadn_len)
 #define PN_refcnt_ix \
-	sv_U32p | STRUCT_OFFSET(struct padname, xpadn_refcnt)
+	sv_U32p | STRUCT_OFFSET(PADNAME, xpadn_refcnt)
 #define PN_cop_seq_range_low_ix \
-	sv_U32p | STRUCT_OFFSET(struct padname, xpadn_low)
+	sv_U32p | STRUCT_OFFSET(PADNAME, xpadn_low)
 #define PN_cop_seq_range_high_ix \
-	sv_U32p | STRUCT_OFFSET(struct padname, xpadn_high)
+	sv_U32p | STRUCT_OFFSET(PADNAME, xpadn_high)
 #define PNL_refcnt_ix \
-	sv_U32p | STRUCT_OFFSET(struct padnamelist, xpadnl_refcnt)
+	sv_U32p | STRUCT_OFFSET(PADNAMELIST, xpadnl_refcnt)
 #define PL_id_ix \
-	sv_U32p | STRUCT_OFFSET(struct padlist, xpadl_id)
+	sv_U32p | STRUCT_OFFSET(PADLIST, xpadl_id)
 #define PL_outid_ix \
-	sv_U32p | STRUCT_OFFSET(struct padlist, xpadl_outid)
+	sv_U32p | STRUCT_OFFSET(PADLIST, xpadl_outid)
 
 
 void
