	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/rafal/Desktop/testbench" "main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"/home/rafal/Desktop/testbench/test.elf"
.LC1:
	.string	"FILE NOT OPENED..."
.LC2:
	.string	"sizeof hdr = %ld\n"
.LC3:
	.string	"rd = %ld bytes\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.file 1 "main.c"
	.loc 1 40 33
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -148(%rbp)
	movq	%rsi, -160(%rbp)
	.loc 1 40 33
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 44 11
	movl	$0, %edx
	movl	$0, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -140(%rbp)
	.loc 1 45 4
	cmpl	$0, -140(%rbp)
	jns	.L2
	.loc 1 46 3
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L2:
	.loc 1 49 15
	leaq	-128(%rbp), %rsi
	movl	-140(%rbp), %eax
	movl	$0, %ecx
	movl	$120, %edx
	movl	%eax, %edi
	call	pread@PLT
	movq	%rax, -136(%rbp)
	.loc 1 51 2
	movl	$120, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 52 2
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 57 2
	movl	-140(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	.loc 1 59 12
	movl	$0, %eax
	.loc 1 60 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 6 "/usr/include/unistd.h"
	.file 7 "/usr/include/fcntl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2cb
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x3a
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0xb
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0x41
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x2d
	.byte	0x1b
	.long	0x3a
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x79
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0xc2
	.byte	0x1b
	.long	0x79
	.uleb128 0x5
	.long	0xa9
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0xd
	.long	0xa9
	.uleb128 0x5
	.long	0xb0
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x4e
	.byte	0x13
	.long	0x98
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF18
	.uleb128 0x5
	.long	0xa4
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.byte	0x1a
	.byte	0x14
	.long	0x6d
	.uleb128 0x2
	.long	.LASF20
	.byte	0x5
	.byte	0x1b
	.byte	0x14
	.long	0x80
	.uleb128 0x2
	.long	.LASF21
	.byte	0x1
	.byte	0xa
	.byte	0x12
	.long	0xec
	.uleb128 0x2
	.long	.LASF22
	.byte	0x1
	.byte	0xb
	.byte	0x12
	.long	0xe0
	.uleb128 0x2
	.long	.LASF23
	.byte	0x1
	.byte	0xc
	.byte	0x12
	.long	0xec
	.uleb128 0x2
	.long	.LASF24
	.byte	0x1
	.byte	0xd
	.byte	0x12
	.long	0xec
	.uleb128 0xe
	.byte	0x78
	.byte	0x1
	.byte	0x13
	.byte	0x9
	.long	0x1da
	.uleb128 0x1
	.long	.LASF25
	.byte	0x14
	.byte	0x10
	.long	0x1da
	.byte	0
	.uleb128 0x1
	.long	.LASF26
	.byte	0x15
	.byte	0xd
	.long	0xf8
	.byte	0x10
	.uleb128 0x1
	.long	.LASF27
	.byte	0x16
	.byte	0xd
	.long	0xf8
	.byte	0x18
	.uleb128 0x1
	.long	.LASF28
	.byte	0x17
	.byte	0xd
	.long	0x104
	.byte	0x20
	.uleb128 0x1
	.long	.LASF29
	.byte	0x18
	.byte	0xd
	.long	0x110
	.byte	0x28
	.uleb128 0x1
	.long	.LASF30
	.byte	0x19
	.byte	0xc
	.long	0x11c
	.byte	0x30
	.uleb128 0x1
	.long	.LASF31
	.byte	0x1a
	.byte	0xc
	.long	0x11c
	.byte	0x38
	.uleb128 0x1
	.long	.LASF32
	.byte	0x1b
	.byte	0xd
	.long	0x104
	.byte	0x40
	.uleb128 0x1
	.long	.LASF33
	.byte	0x1c
	.byte	0xd
	.long	0xf8
	.byte	0x48
	.uleb128 0x1
	.long	.LASF34
	.byte	0x1d
	.byte	0xd
	.long	0xf8
	.byte	0x50
	.uleb128 0x1
	.long	.LASF35
	.byte	0x1e
	.byte	0xd
	.long	0xf8
	.byte	0x58
	.uleb128 0x1
	.long	.LASF36
	.byte	0x1f
	.byte	0xd
	.long	0xf8
	.byte	0x60
	.uleb128 0x1
	.long	.LASF37
	.byte	0x20
	.byte	0xd
	.long	0xf8
	.byte	0x68
	.uleb128 0x1
	.long	.LASF38
	.byte	0x21
	.byte	0xd
	.long	0xf8
	.byte	0x70
	.byte	0
	.uleb128 0xf
	.long	0x4a
	.long	0x1ea
	.uleb128 0x10
	.long	0x3a
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.long	.LASF39
	.byte	0x1
	.byte	0x22
	.byte	0x3
	.long	0x128
	.uleb128 0x6
	.long	.LASF40
	.byte	0x6
	.value	0x166
	.byte	0xc
	.long	0x66
	.long	0x20d
	.uleb128 0x4
	.long	0x66
	.byte	0
	.uleb128 0x6
	.long	.LASF41
	.byte	0x4
	.value	0x16b
	.byte	0xc
	.long	0x66
	.long	0x225
	.uleb128 0x4
	.long	0xb5
	.uleb128 0x7
	.byte	0
	.uleb128 0x6
	.long	.LASF42
	.byte	0x6
	.value	0x185
	.byte	0x10
	.long	0xba
	.long	0x24b
	.uleb128 0x4
	.long	0x66
	.uleb128 0x4
	.long	0x48
	.uleb128 0x4
	.long	0x2e
	.uleb128 0x4
	.long	0x8c
	.byte	0
	.uleb128 0x11
	.long	.LASF43
	.byte	0x7
	.byte	0xd1
	.byte	0xc
	.long	0x66
	.long	0x267
	.uleb128 0x4
	.long	0xb5
	.uleb128 0x4
	.long	0x66
	.uleb128 0x7
	.byte	0
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.long	0x66
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF44
	.byte	0xe
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x8
	.long	.LASF45
	.byte	0x1b
	.long	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.byte	0x2a
	.byte	0xd
	.long	0x1ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x9
	.string	"fd"
	.byte	0x2c
	.byte	0x6
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x9
	.string	"rd"
	.byte	0x31
	.byte	0xa
	.long	0xba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 40
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x18
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
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
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"open"
.LASF6:
	.string	"signed char"
.LASF8:
	.string	"size_t"
.LASF23:
	.string	"Elf64_Addr"
.LASF33:
	.string	"e_ehsize"
.LASF20:
	.string	"uint64_t"
.LASF24:
	.string	"Elf64_Off"
.LASF15:
	.string	"ssize_t"
.LASF47:
	.string	"GNU C17 14.2.0 -mtune=generic -march=x86-64 -g -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF28:
	.string	"e_version"
.LASF39:
	.string	"Elf64_Ehdr"
.LASF4:
	.string	"unsigned char"
.LASF38:
	.string	"e_shstrndx"
.LASF2:
	.string	"long unsigned int"
.LASF31:
	.string	"e_shoff"
.LASF5:
	.string	"short unsigned int"
.LASF42:
	.string	"pread"
.LASF35:
	.string	"e_phnum"
.LASF29:
	.string	"e_entry"
.LASF9:
	.string	"__uint32_t"
.LASF48:
	.string	"main"
.LASF34:
	.string	"e_phentsize"
.LASF3:
	.string	"unsigned int"
.LASF17:
	.string	"long long unsigned int"
.LASF30:
	.string	"e_phoff"
.LASF46:
	.string	"elfHdr"
.LASF26:
	.string	"e_type"
.LASF13:
	.string	"__ssize_t"
.LASF27:
	.string	"e_machine"
.LASF44:
	.string	"argc"
.LASF12:
	.string	"__off_t"
.LASF36:
	.string	"e_shentsize"
.LASF16:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF41:
	.string	"printf"
.LASF7:
	.string	"short int"
.LASF11:
	.string	"__uint64_t"
.LASF22:
	.string	"Elf64_Word"
.LASF45:
	.string	"argv"
.LASF19:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF18:
	.string	"long double"
.LASF40:
	.string	"close"
.LASF21:
	.string	"Elf64_Half"
.LASF25:
	.string	"e_ident"
.LASF32:
	.string	"e_flags"
.LASF37:
	.string	"e_shnum"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/rafal/Desktop/testbench"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (Ubuntu 14.2.0-4ubuntu2~24.04) 14.2.0"
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
