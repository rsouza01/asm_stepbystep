ELF Header:
  Magic:   7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00 
  Class:                             ELF32
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           Intel 80386
  Version:                           0x1
  Entry point address:               0x8048080
  Start of program headers:          52 (bytes into file)
  Start of section headers:          444 (bytes into file)
  Flags:                             0x0
  Size of this header:               52 (bytes)
  Size of program headers:           32 (bytes)
  Number of program headers:         2
  Size of section headers:           40 (bytes)
  Number of section headers:         6
  Section header string table index: 5

Section Headers:
  [Nr] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            00000000 000000 000000 00      0   0  0
  [ 1] .text             PROGBITS        08048080 000080 000025 00  AX  0   0 16
  [ 2] .data             PROGBITS        080490a8 0000a8 000009 00  WA  0   0  4
  [ 3] .symtab           SYMTAB          00000000 0000b4 0000a0 10      4   6  4
  [ 4] .strtab           STRTAB          00000000 000154 00003e 00      0   0  1
  [ 5] .shstrtab         STRTAB          00000000 000192 000027 00      0   0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
  L (link order), O (extra OS processing required), G (group), T (TLS),
  C (compressed), x (unknown), o (OS specific), E (exclude),
  p (processor specific)

There are no section groups in this file.

Program Headers:
  Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
  LOAD           0x000000 0x08048000 0x08048000 0x000a5 0x000a5 R E 0x1000
  LOAD           0x0000a8 0x080490a8 0x080490a8 0x00009 0x00009 RW  0x1000

 Section to Segment mapping:
  Segment Sections...
   00     .text 
   01     .data 

There is no dynamic section in this file.

There are no relocations in this file.

The decoding of unwind sections for machine type Intel 80386 is not currently supported.

Symbol table '.symtab' contains 10 entries:
   Num:    Value  Size Type    Bind   Vis      Ndx Name
     0: 00000000     0 NOTYPE  LOCAL  DEFAULT  UND 
     1: 08048080     0 SECTION LOCAL  DEFAULT    1 
     2: 080490a8     0 SECTION LOCAL  DEFAULT    2 
     3: 00000000     0 FILE    LOCAL  DEFAULT  ABS skeleton.asm
     4: 080490a8     0 NOTYPE  LOCAL  DEFAULT    2 Sentence
     5: 00000009     0 NOTYPE  LOCAL  DEFAULT  ABS SentenceLength
     6: 08048080     0 NOTYPE  GLOBAL DEFAULT    1 _start
     7: 080490b1     0 NOTYPE  GLOBAL DEFAULT    2 __bss_start
     8: 080490b1     0 NOTYPE  GLOBAL DEFAULT    2 _edata
     9: 080490b4     0 NOTYPE  GLOBAL DEFAULT    2 _end




e_ident[EI_MAG0] : 7F 45 4C 46
e_ident[EI_CLASS] : 01
e_ident[EI_DATA] : 01
e_ident[EI_VERSION]	: 01
e_ident[EI_OSABI] : 00
e_ident[EI_ABIVERSION] : 00
e_ident[EI_PAD] : 00 00 00 00 00 00 00
e_type : 02 00
e_machine : 03 00
e_version : 01 00 00 00
e_entry : 80 80 04 08 <- Ver o LE/BE
e_phoff : 34 00 00 00 (52 bytes)
e_shoff : BC 01 00 00
e_flags : 00 00 00 00 
e_ehsize : 34 00
e_phentsize : 20 00
e_phnum : 02 00
e_shentsize : 28 00
e_shnum : 06 00
e_shstrndx : 05 00
