; bx should be a value.

%macro hex_abcdef 2
		cmp %1, 10
		jl %%not_abcdef
			add %1, 87
			jmp %%end_hex_abcdef

		%%not_abcdef:
			add %1, 0x30
			
		%%end_hex_abcdef:
			mov [Hex_Val+%2], %1
%endmacro

print_hex :
	pusha
	mov dx, 0xf000
	mov ax, bx
	and ax, dx
	shr ah, 4
	hex_abcdef ah, 2
	
	mov dx, 0x0f00
	mov ax, bx
	and ah, dh
	hex_abcdef ah, 3
	
	mov dx, 0x00f0
	mov ax, bx
	and ax, dx
	shr al, 4
	hex_abcdef al, 4
	
	mov dx, 0x000f
	mov ax, bx
	and ax, dx
	hex_abcdef al, 5
	
	mov bx, Hex_Val
	call print_
	popa
	ret



