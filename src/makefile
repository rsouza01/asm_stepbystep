# -*- MakeFile -*- 

# MAKEFILE RULES

# <target> : <prerequisites>
# [tab] <recipe>
#
#	$* The stem.
#	$@ The file name of the target of the rule.
#	$< The name of the first prerequisite.
#	$ˆ The names of all the prerequisites separated by spaces.
#	$? The names of all the prerequisites that are newer than the target


# Define which operating system is in use.
ifeq ($(OS),Windows_NT)
	AS='c:\Program Files\NASM\nasm.exe'
else
	AS=nasm
endif

# Set flags
#ASFLAGS= -f elf -g -F stabs
ASFLAGS= -f elf
LD=ld
LDFLAGS= -m elf_i386

OBJDIR   = ./obj
BINDIR   = ./bin
SRCDIR   = ./src

objects = hexdump2 eatsyscall skeleton
#objects = skeleton

all: $(objects)

$(objects): %: %.o
	$(LD) $(LDFLAGS) -o $@ $<
	@echo "Linked "$<" successfully!"

%.o: %.asm
	$(AS) $(ASFLAGS) $^ -l $*.lst
	@echo "Compiled "$<" successfully!"

clean:
	rm -f *.o *.lst $(objects)

help:
	@echo 'This is help'
	
.PHONY: clean
