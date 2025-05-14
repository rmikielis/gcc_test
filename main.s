	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/rafal/Desktop/testbench" "main.c"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB13:
	.file 1 "main.c"
	.loc 1 4 13 view -0
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4112
	orq	$0, (%rsp)
	subq	$4096, %rsp
	.cfi_def_cfa_offset 8208
	orq	$0, (%rsp)
	subq	$16, %rsp
	.cfi_def_cfa_offset 8224
	.loc 1 4 13 is_stmt 0 view .LVU1
	movq	%fs:40, %rax
	movq	%rax, 8200(%rsp)
	xorl	%eax, %eax
	.loc 1 6 5 is_stmt 1 view .LVU2
	.loc 1 7 5 view .LVU3
	.loc 1 9 5 view .LVU4
	movq	%rsp, %rbx
	movq	%rbx, %rdi
	call	zeroing@PLT
.LVL0:
	.loc 1 11 5 view .LVU5
	.loc 1 20 5 is_stmt 0 view .LVU6
	leaq	4096(%rsp), %rsi
	movq	%rbx, %rdi
	.loc 1 11 16 view .LVU7
	movb	$97, (%rsp)
	.loc 1 12 5 is_stmt 1 view .LVU8
	.loc 1 12 17 is_stmt 0 view .LVU9
	movb	$97, 13(%rsp)
	.loc 1 13 5 is_stmt 1 view .LVU10
	.loc 1 13 17 is_stmt 0 view .LVU11
	movb	$97, 66(%rsp)
	.loc 1 14 5 is_stmt 1 view .LVU12
	.loc 1 14 18 is_stmt 0 view .LVU13
	movb	$97, 983(%rsp)
	.loc 1 15 5 is_stmt 1 view .LVU14
	.loc 1 15 19 is_stmt 0 view .LVU15
	movb	$97, 2099(%rsp)
	.loc 1 16 5 is_stmt 1 view .LVU16
	.loc 1 16 19 is_stmt 0 view .LVU17
	movb	$97, 3889(%rsp)
	.loc 1 17 5 is_stmt 1 view .LVU18
	.loc 1 17 19 is_stmt 0 view .LVU19
	movb	$97, 4000(%rsp)
	.loc 1 20 5 is_stmt 1 view .LVU20
	call	copying@PLT
.LVL1:
	.loc 1 21 1 is_stmt 0 view .LVU21
	movq	8200(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L5
	addq	$8208, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL2:
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "lib/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x145
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x7
	.long	.LASF12
	.byte	0xc
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x9
	.long	.LASF13
	.value	0x1000
	.byte	0x2
	.byte	0xb
	.byte	0x8
	.long	0x85
	.uleb128 0xa
	.long	.LASF14
	.byte	0x2
	.byte	0xd
	.byte	0xa
	.long	0x85
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x96
	.uleb128 0xc
	.long	0x3f
	.value	0xfff
	.byte	0
	.uleb128 0x4
	.long	.LASF10
	.byte	0x12
	.long	0xab
	.uleb128 0x2
	.long	0xab
	.uleb128 0x2
	.long	0xab
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x69
	.uleb128 0x4
	.long	.LASF11
	.byte	0x11
	.long	0xc1
	.uleb128 0x2
	.long	0xab
	.byte	0
	.uleb128 0xe
	.long	.LASF15
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x13f
	.uleb128 0x5
	.string	"f1"
	.byte	0x6
	.long	0x69
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8224
	.uleb128 0x5
	.string	"f2"
	.byte	0x7
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x6
	.quad	.LVL0
	.long	0xb1
	.long	0x112
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.quad	.LVL1
	.long	0x96
	.long	0x131
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.byte	0
	.uleb128 0xf
	.quad	.LVL2
	.long	0x13f
	.byte	0
	.uleb128 0x10
	.long	.LASF16
	.long	.LASF16
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x7
	.quad	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"unsigned int"
.LASF11:
	.string	"zeroing"
.LASF13:
	.string	"my_data"
.LASF12:
	.string	"GNU C99 13.3.0 -mtune=generic -march=x86-64 -g -O2 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF5:
	.string	"long unsigned int"
.LASF14:
	.string	"data"
.LASF2:
	.string	"unsigned char"
.LASF15:
	.string	"main"
.LASF8:
	.string	"long int"
.LASF10:
	.string	"copying"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF16:
	.string	"__stack_chk_fail"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/rafal/Desktop/testbench"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
