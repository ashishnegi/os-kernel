:: @echo off
setlocal EnableDelayedExpansion
set qemu_base=Qemu-1.5.3-windows\Qemu-windows-1.5.3
set boot_base=boot
set bios_base=Bios 
set asm_ext=.asm
set bin_ext=.bin
set qemu_system=qemu-system-i386.exe

echo %qemu_base%\%boot_base%\%1%asm_ext%

nasm %1%asm_ext% -f bin -o %qemu_base%\%boot_base%\%1%bin_ext%

%qemu_base%\%qemu_system% -L  %qemu_base%\%bios_base%    %qemu_base%\%boot_base%\%1%bin_ext%
