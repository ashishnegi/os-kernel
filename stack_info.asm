[org 0x7c00]

mov bp, 0x8000
mov sp, bp

push 'X'
push 'Y'
push 'Z'

mov ah, 0x0e

pop bx
mov al, bl
int 10h

pop bx
mov al, bl
int 10h

mov al, [0x7ffe]
int 10h

loop $

times 510-($-$$) db 0

dw 0xaa55