gdt_start:

gdt_null:
	dd 0h
	dd 0h

gdt_code:
	dw 0xffff				; segment limit 0:15
	dw 0x0					; base 0:15
	db 0x0					; base 16:23
	db 10011010b			; p,dpl,s,type  1,00,1,1,0,1,0
	db 11001111b			; g,db,l,avl,segment 1,1,0,0,1111
	db 0x0					; base 24:31

gdt_data:
	dw 0xffff
	dw 0x0
	db 0x0
	db 10010010b			; different type 0010 , data, expand down, writable, accessed
	db 11001111b
	db 0x0

gdt_end:

gdt_descriptor:
	dw gdt_end - gdt_start - 1
	dd gdt_start

CODE_SEG equ gdt_code - gdt_start
	
DATA_SEG equ gdt_data - gdt_start



