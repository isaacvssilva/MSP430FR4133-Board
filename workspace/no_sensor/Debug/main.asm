;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                          Unix v21.6.1.LTS *
;* Date/Time created: Sat Jun 17 10:28:17 2023                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=large --mem_model:data=small --object_format=elf --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU40 --silicon_version=mspx --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Core/Src/main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen Unix v21.6.1.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/isaac/Documents/PIBIC/microcontrolador/workspace/no_sensor/Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("FRCTL0")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("FRCTL0")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/isaac/ti/ccs1230/ccs/ccs_base/msp430/include/msp430fr4133.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x368)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("PM5CTL0")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("PM5CTL0")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("/home/isaac/ti/ccs1230/ccs/ccs_base/msp430/include/msp430fr4133.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x664)
	.dwattr $C$DW$2, DW_AT_decl_column(0x01)

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("WDTCTL")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("WDTCTL")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("/home/isaac/ti/ccs1230/ccs/ccs_base/msp430/include/msp430fr4133.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0xc0c)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)

	.global	text
	.sect	".data:text", RW
	.align	2
	.elfsym	text,SYM_SIZE(22)
text:
	.bits		0x74,8
			; text[0] @ 0
	.bits		0x65,8
			; text[1] @ 8
	.bits		0x73,8
			; text[2] @ 16
	.bits		0x74,8
			; text[3] @ 24
	.bits		0x61,8
			; text[4] @ 32
	.bits		0x6e,8
			; text[5] @ 40
	.bits		0x64,8
			; text[6] @ 48
	.bits		0x6f,8
			; text[7] @ 56
	.bits		0x20,8
			; text[8] @ 64
	.bits		0x6e,8
			; text[9] @ 72
	.bits		0x6f,8
			; text[10] @ 80
	.bits		0x76,8
			; text[11] @ 88
	.bits		0x6f,8
			; text[12] @ 96
	.bits		0x20,8
			; text[13] @ 104
	.bits		0x6d,8
			; text[14] @ 112
	.bits		0x6f,8
			; text[15] @ 120
	.bits		0x64,8
			; text[16] @ 128
	.bits		0x75,8
			; text[17] @ 136
	.bits		0x6c,8
			; text[18] @ 144
	.bits		0x6f,8
			; text[19] @ 152
	.bits		0xa,8
			; text[20] @ 160
	.bits		0,8
			; text[21] @ 168

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("text")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("text")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr text]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("../Core/Src/main.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$4, DW_AT_decl_column(0x06)


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("uart_config")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("uart_config")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/isaac/Documents/PIBIC/microcontrolador/workspace/no_sensor/Drivers/Inc/uart_config.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("uart_puts")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("uart_puts")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("/home/isaac/Documents/PIBIC/microcontrolador/workspace/no_sensor/Drivers/Inc/uart_config.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$6, DW_AT_decl_column(0x06)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$22)

	.dwendtag $C$DW$6


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("__enable_interrupt")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("__enable_interrupt")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwendtag $C$DW$8

;	/home/isaac/ti/ccs1230/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/bin/opt430 /tmp/TI2bJfmhDZk /tmp/TI2bJfuqrct 
	.sect	".text:config_FRAM_waitstate"
	.clink
	.global	config_FRAM_waitstate

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("config_FRAM_waitstate")
	.dwattr $C$DW$9, DW_AT_low_pc(config_FRAM_waitstate)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("config_FRAM_waitstate")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_TI_begin_file("../Core/Src/main.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0x1a)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$9, DW_AT_decl_file("../Core/Src/main.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../Core/Src/main.c",line 26,column 33,is_stmt,address config_FRAM_waitstate,isa 0

	.dwfde $C$DW$CIE, config_FRAM_waitstate

;*****************************************************************************
;* FUNCTION NAME: config_FRAM_waitstate                                      *
;*                                                                           *
;*   Regs Modified     : SP                                                  *
;*   Regs Used         : SP                                                  *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
config_FRAM_waitstate:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "../Core/Src/main.c",line 28,column 5,is_stmt,isa 0
        MOV.W     #42256,&FRCTL0+0      ; [] |28| 
	.dwpsn	file "../Core/Src/main.c",line 29,column 1,is_stmt,isa 0
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../Core/Src/main.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x1d)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:main"
	.clink
	.global	main

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("main")
	.dwattr $C$DW$11, DW_AT_low_pc(main)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_TI_begin_file("../Core/Src/main.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x21)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$11, DW_AT_decl_file("../Core/Src/main.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x21)
	.dwattr $C$DW$11, DW_AT_decl_column(0x05)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../Core/Src/main.c",line 33,column 16,is_stmt,address main,isa 0

	.dwfde $C$DW$CIE, main

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : SR,r11,r12,r13,r14,r15                              *
;*   Regs Used         : SR,r11,r12,r13,r14,r15                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "../Core/Src/main.c",line 34,column 5,is_stmt,isa 0
        MOV.W     #23168,&WDTCTL+0      ; [] |34| 
	.dwpsn	file "../Core/Src/main.c",line 35,column 5,is_stmt,isa 0
        BIC.W     #1,&PM5CTL0+0         ; [] |35| 
	.dwpsn	file "../Core/Src/main.c",line 37,column 5,is_stmt,isa 0
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("config_FRAM_waitstate")
	.dwattr $C$DW$12, DW_AT_TI_call

        CALLA     #config_FRAM_waitstate ; [] |37| 
                                          ; [] |37| 
	.dwpsn	file "../Core/Src/main.c",line 38,column 5,is_stmt,isa 0
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_name("uart_config")
	.dwattr $C$DW$13, DW_AT_TI_call

        CALLA     #uart_config          ; [] |38| 
                                          ; [] |38| 
	.dwpsn	file "../Core/Src/main.c",line 40,column 5,is_stmt,isa 0
        NOP
        EINT
        NOP      ; [] |40| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L1
;*
;*   Loop source line                : 42
;*   Loop closing brace source line  : 45
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L1:    
	.dwpsn	file "../Core/Src/main.c",line 43,column 9,is_stmt,isa 0
        MOV.W     #text+0,r12           ; [] |43| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_name("uart_puts")
	.dwattr $C$DW$14, DW_AT_TI_call

        CALLA     #uart_puts            ; [] |43| 
                                          ; [] |43| 
	.dwpsn	file "../Core/Src/main.c",line 44,column 9,is_stmt,isa 0
        ; Begin 500000 cycle delay
        .newblock
        PUSHM.A  #2, r14
        MOV.W    #10308, r13
        MOV.W    #1, r14
$1:     SUB.W    #1, r13
        SUBC.W   #0, r14
        JNE      $1
        TST.W    r13
        JNE      $1
        POPM.A   #2, r14
        NOP
        ; End 500000 cycle delay ; [] |44| 
	.dwpsn	file "../Core/Src/main.c",line 42,column 12,is_stmt,isa 0
        JMP       $C$L1                 ; [] |42| 
                                          ; [] |42| 
        NOP       ; [] 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$11, DW_AT_TI_end_file("../Core/Src/main.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x2e)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	FRCTL0
	.global	PM5CTL0
	.global	WDTCTL
	.global	uart_config
	.global	uart_puts

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(1)
	.battr "TI", Tag_File, 1, Tag_PORTS_INIT_INFO("012345678901ABCDEFGHIJ00000000000011110000000000000000000000000000")
	.battr "TI", Tag_File, 1, Tag_LEA_INFO(1)
	.battr "TI", Tag_File, 1, Tag_LOCKIO_INFO(2)
	.battr "TI", Tag_File, 1, Tag_WAITSTATE_INFO(2)
	.battr "TI", Tag_File, 1, Tag_HW_MPY32_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_ISR_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_INLINE_INFO(1)
	.battr "mspabi", Tag_File, 1, Tag_enum_size(3)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")


$C$DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x14)

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__SFR_FARPTR")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/isaac/ti/ccs1230/ccs/ccs_base/msp430/include/msp430fr4133.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x11)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x02)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

$C$DW$T$31	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$11)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$22	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$22, DW_AT_address_class(0x10)


$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x16)
$C$DW$15	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$15, DW_AT_upper_bound(0x15)

	.dwendtag $C$DW$T$32

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 16
	.dwcfi	cfa_register, 1
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 0
	.dwcfi	same_value, 1
	.dwcfi	same_value, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$16	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$16, DW_AT_name("PC")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg0]

$C$DW$17	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$17, DW_AT_name("SP")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg1]

$C$DW$18	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$18, DW_AT_name("SR")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg2]

$C$DW$19	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$19, DW_AT_name("CG")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg3]

$C$DW$20	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$20, DW_AT_name("r4")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg4]

$C$DW$21	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$21, DW_AT_name("r5")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg5]

$C$DW$22	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$22, DW_AT_name("r6")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg6]

$C$DW$23	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$23, DW_AT_name("r7")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg7]

$C$DW$24	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$24, DW_AT_name("r8")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg8]

$C$DW$25	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$25, DW_AT_name("r9")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg9]

$C$DW$26	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$26, DW_AT_name("r10")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg10]

$C$DW$27	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$27, DW_AT_name("r11")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg11]

$C$DW$28	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$28, DW_AT_name("r12")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg12]

$C$DW$29	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$29, DW_AT_name("r13")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg13]

$C$DW$30	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$30, DW_AT_name("r14")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg14]

$C$DW$31	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$31, DW_AT_name("r15")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg15]

$C$DW$32	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$32, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU

