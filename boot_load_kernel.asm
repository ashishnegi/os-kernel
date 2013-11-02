[org 0x7c00]

mov [BOOT_DRIVE], dl

mov bp, 0x9000
mov sp, bp

mov bx, Msg_16
call print_ 

call load_kernel

call switch_pm

jmp $

%include "print_string.asm"

%include "load_kernel.asm"

%include "gdt_32_mode.asm"

%include "print_string_32.asm"

%include "switch_16_to_32.asm"

call Begin_PM

call KERNEL_OFFSET

jmp $


Begin_PM:
	pusha
	mov ebx, Msg_32 
	call print_string_32
	popa
	ret

BOOT_DRIVE db 0
Msg_16 db "Hello from 16 bit mode", 0
Msg_32 db "Hello from 32 bit mode", 0

; signature of boot_sector
times 510-($-$$) db 0x0
dw 0xaa55