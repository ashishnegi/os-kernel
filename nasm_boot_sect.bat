nasm boot_sect.asm -f bin -o "Qemu-1.5.3-windows\Qemu-windows-1.5.3\boot\boot_sect.asm"

"Qemu-1.5.3-windows\Qemu-windows-1.5.3\qemu-system-i386" -L "Qemu-1.5.3-windows\Qemu-windows-1.5.3\Bios" "Qemu-1.5.3-windows\Qemu-windows-1.5.3\boot\boot_sect.asm"
