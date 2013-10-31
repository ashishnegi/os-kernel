; always have [bits 32] before including this file
[bits 32]

VIDEO_MEM equ 0xb8000
WHITE_ON_BLACK equ 0x0f

; How to switch to 32 bit ?

print_string_32 :
	pusha						; store all the registers
	mov edx, VIDEO_MEM

	print_string_32_loop:
	mov al, [ebx]
	cmp al, 0h
	je print_string_32_done

	mov ah, [WHITE_ON_BLACK]
	mov [edx], ax

	inc ebx
	add edx, 2
	jmp print_string_32_loop

	print_string_32_done:
	popa
	ret



