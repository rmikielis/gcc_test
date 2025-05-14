	.file	"utils.c"
	.text
.Ltext0:
	.file 0 "/home/rafal/Desktop/testbench" "lib/utils.c"
	.section	.text.hot,"ax",@progbits
	.p2align 4
	.globl	zeroing
	.type	zeroing, @function
zeroing:
.LVL0:
.LFB13:
	.file 1 "lib/utils.c"
	.loc 1 6 1 view -0
	.cfi_startproc
	.loc 1 6 1 is_stmt 0 view .LVU1
	endbr64
	.loc 1 7 5 is_stmt 1 view .LVU2
	.loc 1 7 10 is_stmt 0 view .LVU3
	movq	$0, (%rdi)
	.loc 1 6 1 view .LVU4
	movq	%rdi, %rcx
	.loc 1 7 10 view .LVU5
	leaq	8(%rdi), %rdi
.LVL1:
	.loc 1 7 10 view .LVU6
	xorl	%eax, %eax
	movq	$0, 4080(%rdi)
	andq	$-8, %rdi
	subq	%rdi, %rcx
.LVL2:
	.loc 1 7 10 view .LVU7
	addl	$4096, %ecx
	shrl	$3, %ecx
	rep stosq
	.loc 1 8 1 view .LVU8
	ret
	.cfi_endproc
.LFE13:
	.size	zeroing, .-zeroing
	.p2align 4
	.globl	copying
	.type	copying, @function
copying:
.LVL3:
.LFB14:
	.loc 1 11 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 11 1 is_stmt 0 view .LVU10
	endbr64
	.loc 1 12 5 is_stmt 1 view .LVU11
	.loc 1 12 9 is_stmt 0 view .LVU12
	movq	(%rdi), %rdx
	.loc 1 11 1 view .LVU13
	movq	%rdi, %rax
	movq	%rsi, %rcx
	.loc 1 12 9 view .LVU14
	movq	%rdx, (%rsi)
	movq	4088(%rdi), %rdx
	leaq	8(%rsi), %rdi
.LVL4:
	.loc 1 12 9 view .LVU15
	andq	$-8, %rdi
	subq	%rdi, %rcx
	movq	%rdx, 4088(%rsi)
	subq	%rcx, %rax
.LVL5:
	.loc 1 12 9 view .LVU16
	addl	$4096, %ecx
	movq	%rax, %rsi
.LVL6:
	.loc 1 12 9 view .LVU17
	shrl	$3, %ecx
	rep movsq
	.loc 1 13 1 view .LVU18
	ret
	.cfi_endproc
.LFE14:
	.size	copying, .-copying
	.text
	.p2align 4
	.globl	my_mem_set
	.type	my_mem_set, @function
my_mem_set:
.LVL7:
.LFB15:
	.loc 1 16 44 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 16 44 is_stmt 0 view .LVU20
	endbr64
	.loc 1 18 5 is_stmt 1 view .LVU21
.LVL8:
	.loc 1 20 5 view .LVU22
	.loc 1 20 13 view .LVU23
	testq	%rdx, %rdx
	je	.L9
	.loc 1 16 44 is_stmt 0 view .LVU24
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 21 12 view .LVU25
	movzbl	%sil, %esi
.LVL9:
	.loc 1 21 12 view .LVU26
	call	memset@PLT
.LVL10:
	.loc 1 27 1 view .LVU27
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
.LVL11:
	.p2align 4,,10
	.p2align 3
.L9:
	.loc 1 27 1 view .LVU28
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE15:
	.size	my_mem_set, .-my_mem_set
	.p2align 4
	.globl	my_mem_cpy
	.type	my_mem_cpy, @function
my_mem_cpy:
.LVL12:
.LFB16:
	.loc 1 29 52 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 29 52 is_stmt 0 view .LVU30
	endbr64
	.loc 1 31 5 is_stmt 1 view .LVU31
	.loc 1 29 52 is_stmt 0 view .LVU32
	movq	%rdi, %rax
	.loc 1 31 8 view .LVU33
	cmpq	%rsi, %rdi
	je	.L13
.LVL13:
	.loc 1 39 13 is_stmt 1 view .LVU34
	testq	%rdx, %rdx
	je	.L13
	xorl	%ecx, %ecx
.LVL14:
	.p2align 4,,10
	.p2align 3
.L14:
	.loc 1 40 9 view .LVU35
	.loc 1 40 16 is_stmt 0 view .LVU36
	movzbl	(%rsi,%rcx), %r8d
	.loc 1 40 14 view .LVU37
	movb	%r8b, (%rax,%rcx)
	.loc 1 41 9 is_stmt 1 view .LVU38
.LVL15:
	.loc 1 42 9 view .LVU39
	.loc 1 43 9 view .LVU40
	.loc 1 39 13 view .LVU41
	addq	$1, %rcx
.LVL16:
	.loc 1 39 13 is_stmt 0 view .LVU42
	cmpq	%rdx, %rcx
	jne	.L14
.LVL17:
.L13:
	.loc 1 47 1 view .LVU43
	ret
	.cfi_endproc
.LFE16:
	.size	my_mem_cpy, .-my_mem_cpy
	.p2align 4
	.globl	my_mem_cmp
	.type	my_mem_cmp, @function
my_mem_cmp:
.LVL18:
.LFB17:
	.loc 1 49 58 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 49 58 is_stmt 0 view .LVU45
	endbr64
	.loc 1 51 5 is_stmt 1 view .LVU46
.LVL19:
	.loc 1 52 5 view .LVU47
	.loc 1 54 5 view .LVU48
	.loc 1 54 14 view .LVU49
	testq	%rdx, %rdx
	je	.L23
	xorl	%eax, %eax
	jmp	.L22
.LVL20:
	.p2align 4,,10
	.p2align 3
.L21:
	.loc 1 58 9 view .LVU50
	.loc 1 59 9 view .LVU51
	.loc 1 60 9 view .LVU52
	.loc 1 54 14 view .LVU53
	addq	$1, %rax
.LVL21:
	.loc 1 54 14 is_stmt 0 view .LVU54
	cmpq	%rdx, %rax
	je	.L23
.LVL22:
.L22:
	.loc 1 55 9 is_stmt 1 view .LVU55
	.loc 1 55 13 is_stmt 0 view .LVU56
	movzbl	(%rdi,%rax), %ecx
	.loc 1 55 20 view .LVU57
	movzbl	(%rsi,%rax), %r8d
	.loc 1 55 12 view .LVU58
	cmpb	%r8b, %cl
	je	.L21
	.loc 1 56 13 is_stmt 1 view .LVU59
	.loc 1 56 33 is_stmt 0 discriminator 1 view .LVU60
	cmpb	%cl, %r8b
	sbbl	%eax, %eax
.LVL23:
	.loc 1 56 33 discriminator 1 view .LVU61
	andl	$2, %eax
	subl	$1, %eax
	ret
.LVL24:
	.p2align 4,,10
	.p2align 3
.L23:
	.loc 1 63 12 view .LVU62
	xorl	%eax, %eax
	.loc 1 64 1 view .LVU63
	ret
	.cfi_endproc
.LFE17:
	.size	my_mem_cmp, .-my_mem_cmp
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "lib/utils.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2bf
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xa
	.long	.LASF18
	.byte	0xc
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL14
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF10
	.byte	0x2
	.byte	0x26
	.byte	0x17
	.long	0x2a
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0xc
	.byte	0x8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.long	0x4d
	.uleb128 0xd
	.long	0x77
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.long	0x3f
	.uleb128 0xe
	.long	.LASF19
	.value	0x1000
	.byte	0x5
	.byte	0xb
	.byte	0x8
	.long	0xb0
	.uleb128 0xf
	.long	.LASF20
	.byte	0x5
	.byte	0xd
	.byte	0xa
	.long	0xb0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x70
	.long	0xc1
	.uleb128 0x11
	.long	0x3f
	.value	0xfff
	.byte	0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x31
	.byte	0x5
	.long	0x60
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x130
	.uleb128 0x7
	.string	"s1"
	.byte	0x31
	.byte	0x1c
	.long	0x130
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x7
	.string	"s2"
	.byte	0x31
	.byte	0x2c
	.long	0x130
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.string	"n"
	.byte	0x31
	.byte	0x37
	.long	0x88
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x3
	.string	"t1"
	.byte	0x33
	.byte	0x14
	.long	0x136
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x3
	.string	"t2"
	.byte	0x34
	.byte	0x14
	.long	0x136
	.long	.LLST13
	.long	.LVUS13
	.byte	0
	.uleb128 0x4
	.long	0x135
	.uleb128 0x12
	.uleb128 0x4
	.long	0x83
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1d
	.byte	0x7
	.long	0x6e
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b0
	.uleb128 0x1
	.string	"d"
	.byte	0x1d
	.byte	0x18
	.long	0x6e
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x7
	.string	"s"
	.byte	0x1d
	.byte	0x27
	.long	0x130
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.string	"n"
	.byte	0x1d
	.byte	0x31
	.long	0x88
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x3
	.string	"dst"
	.byte	0x24
	.byte	0xe
	.long	0x1b0
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x3
	.string	"src"
	.byte	0x25
	.byte	0x14
	.long	0x136
	.long	.LLST10
	.long	.LVUS10
	.byte	0
	.uleb128 0x4
	.long	0x77
	.uleb128 0x6
	.long	.LASF15
	.byte	0x10
	.byte	0x7
	.long	0x6e
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x241
	.uleb128 0x1
	.string	"s"
	.byte	0x10
	.byte	0x18
	.long	0x6e
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1
	.string	"c"
	.byte	0x10
	.byte	0x1f
	.long	0x60
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1
	.string	"n"
	.byte	0x10
	.byte	0x29
	.long	0x88
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x3
	.string	"p"
	.byte	0x12
	.byte	0xe
	.long	0x1b0
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x13
	.quad	.LVL10
	.long	0x2b7
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF16
	.byte	0xa
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x282
	.uleb128 0x1
	.string	"p1"
	.byte	0xa
	.byte	0x34
	.long	0x282
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1
	.string	"p2"
	.byte	0xa
	.byte	0x48
	.long	0x282
	.long	.LLST2
	.long	.LVUS2
	.byte	0
	.uleb128 0x4
	.long	0x94
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b7
	.uleb128 0x1
	.string	"var"
	.byte	0x5
	.byte	0x34
	.long	0x282
	.long	.LLST0
	.long	.LVUS0
	.byte	0
	.uleb128 0x14
	.long	.LASF21
	.long	.LASF22
	.byte	0x6
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 27
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS11:
	.uleb128 0
	.uleb128 .LVU50
	.uleb128 .LVU53
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU55
.LLST11:
	.byte	0x6
	.quad	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL20-.LVL18
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL20-.LVL18
	.uleb128 .LVL21-.LVL18
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL18
	.uleb128 .LVL22-.LVL18
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU47
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU51
	.uleb128 .LVU55
	.uleb128 .LVU61
.LLST12:
	.byte	0x6
	.quad	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL20-.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL19
	.uleb128 .LVL23-.LVL19
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU48
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU52
	.uleb128 .LVU55
	.uleb128 .LVU61
.LLST13:
	.byte	0x6
	.quad	.LVL19
	.byte	0x4
	.uleb128 .LVL19-.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL20-.LVL19
	.uleb128 .LVL20-.LVL19
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL22-.LVL19
	.uleb128 .LVL23-.LVL19
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST7:
	.byte	0x6
	.quad	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL17-.LVL12
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL17-.LVL12
	.uleb128 .LFE16-.LVL12
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
.LLST8:
	.byte	0x6
	.quad	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL14-.LVL12
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL14-.LVL12
	.uleb128 .LVL15-.LVL12
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL12
	.uleb128 .LVL16-.LVL12
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL12
	.uleb128 .LVL17-.LVL12
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU34
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
.LLST9:
	.byte	0x6
	.quad	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL13
	.uleb128 .LVL16-.LVL13
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL13
	.uleb128 .LVL17-.LVL13
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU34
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
.LLST10:
	.byte	0x6
	.quad	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL13
	.uleb128 .LVL16-.LVL13
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL13
	.uleb128 .LVL17-.LVL13
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL10-1-.LVL7
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL10-1-.LVL7
	.uleb128 .LVL11-.LVL7
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL7
	.uleb128 .LFE15-.LVL7
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL9-.LVL7
	.uleb128 .LVL11-.LVL7
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL7
	.uleb128 .LFE15-.LVL7
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST5:
	.byte	0x6
	.quad	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL10-1-.LVL7
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL10-1-.LVL7
	.uleb128 .LVL11-.LVL7
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL7
	.uleb128 .LFE15-.LVL7
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS6:
	.uleb128 .LVU22
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST6:
	.byte	0x6
	.quad	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL10-1-.LVL8
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL10-1-.LVL8
	.uleb128 .LVL11-.LVL8
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL8
	.uleb128 .LFE15-.LVL8
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL4-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LFE14-.LVL3
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 0
.LLST2:
	.byte	0x6
	.quad	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL6-.LVL3
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL6-.LVL3
	.uleb128 .LFE14-.LVL3
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE13-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.quad	.LFB14
	.quad	.LFE14-.LFB14
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
.LLRL14:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB13
	.uleb128 .LFE13-.LFB13
	.byte	0x7
	.quad	.LFB14
	.uleb128 .LFE14-.LFB14
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"short int"
.LASF12:
	.string	"size_t"
.LASF16:
	.string	"copying"
.LASF11:
	.string	"uint8_t"
.LASF21:
	.string	"memset"
.LASF8:
	.string	"long int"
.LASF10:
	.string	"__uint8_t"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"signed char"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF9:
	.string	"char"
.LASF19:
	.string	"my_data"
.LASF20:
	.string	"data"
.LASF14:
	.string	"my_mem_cpy"
.LASF5:
	.string	"long unsigned int"
.LASF22:
	.string	"__builtin_memset"
.LASF18:
	.string	"GNU C99 13.3.0 -mtune=generic -march=x86-64 -g -O2 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF17:
	.string	"zeroing"
.LASF13:
	.string	"my_mem_cmp"
.LASF15:
	.string	"my_mem_set"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/rafal/Desktop/testbench"
.LASF0:
	.string	"lib/utils.c"
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
