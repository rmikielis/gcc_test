#include <stdio.h>
#include <stdlib.h>
#include "lib/utils.h"
#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>

#define EI_NIDENT 16

typedef uint64_t Elf64_Half;
typedef uint32_t Elf64_Word;
typedef uint64_t Elf64_Addr;
typedef uint64_t Elf64_Off;
typedef int64_t Elf64_Sword;
typedef uint64_t Elf64_Xword;



typedef struct {
	unsigned char e_ident[EI_NIDENT];
	Elf64_Half e_type;
	Elf64_Half e_machine;
	Elf64_Word e_version;
	Elf64_Addr e_entry;
	Elf64_Off e_phoff;
	Elf64_Off e_shoff;
	Elf64_Word e_flags;
	Elf64_Half e_ehsize;
	Elf64_Half e_phentsize;
	Elf64_Half e_phnum;
	Elf64_Half e_shentsize;
	Elf64_Half e_shnum;
	Elf64_Half e_shstrndx;
} Elf64_Ehdr;

//======================================================



int main(int argc, char **argv) {

	Elf64_Ehdr elfHdr;

	int fd = open("/home/rafal/Desktop/testbench/test.elf", 0, O_RDONLY);
	if(fd < 0)
		printf("FILE NOT OPENED...\n");


	ssize_t rd = pread(fd, &elfHdr, sizeof(Elf64_Ehdr), 0);

	printf("sizeof hdr = %ld\n", sizeof(Elf64_Ehdr));
	printf("rd = %ld bytes\n", rd);



		
	close(fd);	

    return 0;
}
