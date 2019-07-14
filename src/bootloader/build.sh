#!/bin/sh


#-f bin => flat-form binary files (e.g. DOS .COM, .SYS)
nasm -f bin bootloader.asm -o bootloader

if [ $? -eq 0 ]; then
    dd if=/dev/zero of=disk.img bs=512 count=2880
    
    dd conv=notrunc if=bootloader of=disk.img bs=512
else
    echo "Compilation failed"
    exit 1
fi

case $1 in
    -r|--run)
		#qemu-system-i386 -machine q35 -fda disk.img
    qemu-system-i386 -machine q35 -drive format=raw,file=disk.img

      ;;
    -d|--debug)
		qemu-system-i386 -machine q35 -fda disk.img -gdb tcp::26000 -S
      ;;
esac
  

