## clang++ -fbasic-block-sections=all -ffunction-sections -g2 -gdwarf-5
## int doStuffOther(int val) {
##   if (val)
##     ++val;
##   return val;
## }
##
## int mainOther(int argc, const char** argv) {
##     return  doStuffOther(argc);
## }
		.text
	.file	"mainOther.cpp"
	.section	.text._Z12doStuffOtheri,"ax",@progbits
	.globl	_Z12doStuffOtheri               # -- Begin function _Z12doStuffOtheri
	.p2align	4, 0x90
	.type	_Z12doStuffOtheri,@function
_Z12doStuffOtheri:                      # @_Z12doStuffOtheri
.Lfunc_begin0:
	.file	0 "." "mainOther.cpp" md5 0xe43cc8133fbf67674318eacbcc46a59e
	.loc	0 1 0                           # mainOther.cpp:1:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
.Ltmp0:
	.loc	0 2 8 prologue_end              # mainOther.cpp:2:8
	cmpl	$0, -4(%rbp)
.Ltmp1:
	.loc	0 2 8 is_stmt 0                 # mainOther.cpp:2:8
	je	_Z12doStuffOtheri.__part.2
	jmp	_Z12doStuffOtheri.__part.1
.LBB_END0_0:
	.cfi_endproc
	.section	.text._Z12doStuffOtheri,"ax",@progbits,unique,1
_Z12doStuffOtheri.__part.1:             # %if.then
	.cfi_startproc
	.cfi_def_cfa %rbp, 16
	.cfi_offset %rbp, -16
	.loc	0 3 6 is_stmt 1                 # mainOther.cpp:3:6
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	_Z12doStuffOtheri.__part.2
.LBB_END0_1:
	.size	_Z12doStuffOtheri.__part.1, .LBB_END0_1-_Z12doStuffOtheri.__part.1
	.cfi_endproc
	.section	.text._Z12doStuffOtheri,"ax",@progbits,unique,2
_Z12doStuffOtheri.__part.2:             # %if.end
	.cfi_startproc
	.cfi_def_cfa %rbp, 16
	.cfi_offset %rbp, -16
	.loc	0 4 11                          # mainOther.cpp:4:11
	movl	-4(%rbp), %eax
	.loc	0 4 4 epilogue_begin is_stmt 0  # mainOther.cpp:4:4
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB_END0_2:
	.size	_Z12doStuffOtheri.__part.2, .LBB_END0_2-_Z12doStuffOtheri.__part.2
	.cfi_endproc
	.section	.text._Z12doStuffOtheri,"ax",@progbits
.Lfunc_end0:
	.size	_Z12doStuffOtheri, .Lfunc_end0-_Z12doStuffOtheri
                                        # -- End function
	.section	.text._Z9mainOtheriPPKc,"ax",@progbits
	.globl	_Z9mainOtheriPPKc               # -- Begin function _Z9mainOtheriPPKc
	.p2align	4, 0x90
	.type	_Z9mainOtheriPPKc,@function
_Z9mainOtheriPPKc:                      # @_Z9mainOtheriPPKc
.Lfunc_begin1:
	.loc	0 7 0 is_stmt 1                 # mainOther.cpp:7:0
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp2:
	.loc	0 8 27 prologue_end             # mainOther.cpp:8:27
	movl	-4(%rbp), %edi
	.loc	0 8 14 is_stmt 0                # mainOther.cpp:8:14
	callq	_Z12doStuffOtheri
	.loc	0 8 6 epilogue_begin            # mainOther.cpp:8:6
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB_END1_0:
	.cfi_endproc
.Lfunc_end1:
	.size	_Z9mainOtheriPPKc, .Lfunc_end1-_Z9mainOtheriPPKc
                                        # -- End function
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	116                             # DW_AT_rnglists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x76 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	33                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.quad	0                               # DW_AT_low_pc
	.byte	1                               # DW_AT_ranges
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.byte	2                               # Abbrev [2] 0x2b:0x18 DW_TAG_subprogram
	.byte	0                               # DW_AT_ranges
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	3                               # DW_AT_linkage_name
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	1                               # DW_AT_decl_line
	.long	106                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x37:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	1                               # DW_AT_decl_line
	.long	106                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x43:0x27 DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	6                               # DW_AT_linkage_name
	.byte	7                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	106                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x53:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	106                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x5e:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	110                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x6a:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x6e:0x5 DW_TAG_pointer_type
	.long	115                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x73:0x5 DW_TAG_pointer_type
	.long	120                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x78:0x5 DW_TAG_const_type
	.long	125                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x7d:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	2                               # Offset entry count
.Lrnglists_table_base0:
	.long	.Ldebug_ranges0-.Lrnglists_table_base0
	.long	.Ldebug_ranges1-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	3                               # DW_RLE_startx_length
	.byte	0                               #   start index
	.uleb128 .LBB_END0_1-_Z12doStuffOtheri.__part.1 #   length
	.byte	3                               # DW_RLE_startx_length
	.byte	1                               #   start index
	.uleb128 .LBB_END0_2-_Z12doStuffOtheri.__part.2 #   length
	.byte	3                               # DW_RLE_startx_length
	.byte	2                               #   start index
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   length
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	3                               # DW_RLE_startx_length
	.byte	0                               #   start index
	.uleb128 .LBB_END0_1-_Z12doStuffOtheri.__part.1 #   length
	.byte	3                               # DW_RLE_startx_length
	.byte	1                               #   start index
	.uleb128 .LBB_END0_2-_Z12doStuffOtheri.__part.2 #   length
	.byte	3                               # DW_RLE_startx_length
	.byte	2                               #   start index
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   length
	.byte	3                               # DW_RLE_startx_length
	.byte	3                               #   start index
	.uleb128 .Lfunc_end1-.Lfunc_begin1      #   length
	.byte	0                               # DW_RLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	52                              # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 19.0.0git (git@github.com:llvm/llvm-project.git df542e1ed82bd4e5a9e345d3a3ae63a76893a0cf)" # string offset=0
.Linfo_string1:
	.asciz	"mainOther.cpp"                 # string offset=104
.Linfo_string2:
	.asciz	"."                             # string offset=118
.Linfo_string3:
	.asciz	"_Z12doStuffOtheri"             # string offset=120
.Linfo_string4:
	.asciz	"doStuffOther"                  # string offset=138
.Linfo_string5:
	.asciz	"int"                           # string offset=151
.Linfo_string6:
	.asciz	"_Z9mainOtheriPPKc"             # string offset=155
.Linfo_string7:
	.asciz	"mainOther"                     # string offset=173
.Linfo_string8:
	.asciz	"val"                           # string offset=183
.Linfo_string9:
	.asciz	"argc"                          # string offset=187
.Linfo_string10:
	.asciz	"argv"                          # string offset=192
.Linfo_string11:
	.asciz	"char"                          # string offset=197
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	_Z12doStuffOtheri.__part.1
	.quad	_Z12doStuffOtheri.__part.2
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
.Ldebug_addr_end0:
	.ident	"clang version 19.0.0git (git@github.com:llvm/llvm-project.git df542e1ed82bd4e5a9e345d3a3ae63a76893a0cf)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z12doStuffOtheri
	.section	.debug_line,"",@progbits
.Lline_table_start0:
