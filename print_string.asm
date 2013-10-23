; bx should be pointing to the null-terminated string.

print_ :
	pusha
	mov ah, 0x0e
	char_ :
		mov al, [bx]
		cmp al, 0h
		je end_
		int 10h
		inc bx
		jmp char_

	end_:
	popa
	ret