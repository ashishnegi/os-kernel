[org 0x7c00]

mov bx, hello_
call print_

mov bx, bye_
call print_

mov bx, null_				; so that bye does not get printed twice.

%include "print_string.asm"

jmp $

hello_:
	db 'Hello!!!', 0
bye_:
	db 'ByeBye!!!', 0

null_:
	db 0

times 510-($-$$) db 0

dw 0xaa55