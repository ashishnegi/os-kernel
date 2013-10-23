[org 0x7c00]

mov bx, 0xadbc
call print_hex

jmp data_start

%include "print_hex.asm"

%include "print_string.asm"

data_start:

jmp $

Hex_Val:
	db '0x0000', 0
null_:
	db 0

times 510-($-$$) db 0
dw 0xaa55