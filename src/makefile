

sandbox: sandbox.o
	ld -m elf_i386 -o sandbox sandbox.o

sandbox.o: sandbox.asm
	nasm -f elf -g -F stabs sandbox.asm -l sandbox.lst

eatsyscall: eatsyscall.o
	ld -m elf_i386 -o eatsyscall eatsyscall.o

eatsyscall.o: eatsyscall.asm
	nasm -f elf -g -F stabs eatsyscall.asm -l eatsyscall.lst


clean:
	rm -f ./sandbox ./eatsyscall ./*.lst ./*.o
