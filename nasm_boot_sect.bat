:: @echo off
setlocal EnableDelayedExpansion
set qemu_base=Qemu-1.5.3-windows\Qemu-windows-1.5.3
set boot_base=boot
set bios_base=Bios 
set boot_sect=boot_sect.asm
set qemu_system=qemu-system-i386.exe

echo %qemu_base%\%boot_base%\%boot_sect%

nasm boot_sect.asm -f bin -o %qemu_base%\%boot_base%\%boot_sect%

%qemu_base%\%qemu_system% -L  %qemu_base%\%bios_base%    %qemu_base%\%boot_base%\%boot_sect%
