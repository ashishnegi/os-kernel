[org 0x7c00]

mov [Boot_Drive], dl			; dl has got boot drive, save it.

mov bp, 0x8000					; stack is safe
mov sp, bp

mov bx, 0x9000
mov dh, 2 					; read 2 sectors
mov dl, [Boot_Drive]

call disk_read

mov bx, [0x9000]
call print_hex

mov bx, [0x9000 + 512]
call print_hex

jmp $

%include "disk_read.asm"
%include "print_string.asm"
%include "print_hex.asm"

disk_error_msg:
	db "Error in reading from disk", 0

; Global Variables
Boot_Drive:
	db 0

Hex_Val:
	db '0x0000', 0

times 510-($-$$) db 0

dw 0xaa55

times 256 dw 0xface
times 256 dw 0xcafe
