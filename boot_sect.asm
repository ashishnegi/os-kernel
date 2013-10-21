
%macro print 1
		mov al, %1
		int 10h
%endmacro 

mov ah, 0eh

print('H')
print('E')
print('L')
print('L')
print('O')
print('!')

loop:
	jmp loop

times 510-($-$$) db 0

dw 0xaa55