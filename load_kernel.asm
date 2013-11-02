[bits 16]

KERNEL_OFFSET  equ 0x1000

load_kernel:
	pusha
	mov dh, 15
	mov bx, [KERNEL_OFFSET]
	mov dl, [BOOT_DRIVE]
	call disk_read
	popa
	ret


%include "disk_read.asm"