Download cygwin from : http://lassauge.free.fr/qemu/

Install NASM for windows
	Build asm files with command : nasm boot_sect.asm -f bin -o boot_sect.bin 

Run : "qemu-system-i386.exe -L Bios boot\boot_sec_2.raw"