; how to switch from 16 bit to 32 bit
[bits 16]

switch_pm:

cli					; clear interrupts

lgdt [gdt_descriptor]		; load the gdt descriptor

mov eax, cr0				; set the first bit of cr0
or eax, 0x1
mov cr0, eax

jmp CODE_SEG:start_protected_mode			; flush the cpu pipeline

[bits 32]

start_protected_mode:

	; first set the old segments

	mov ax, DATA_SEG
	mov ds, ax
	mov ss, ax
	mov es, ax
	mov fs, ax
	mov gs, ax

mov ebp, 0x90000			; set the stack pointer
mov esp, ebp


