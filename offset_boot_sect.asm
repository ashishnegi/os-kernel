
[org 0x7c00]

the_secret:
	db "X"

mov ah, 0x0e

mov al, the_secret
int 10h

mov al, [the_secret]
int 10h

mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 10h

jmp $			; loop infinitely here

times 510 - ($-$$) db 0

dw 0xaa55