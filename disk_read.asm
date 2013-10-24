; dh determines no of sectors to read
; bx determines the position where it would be read

disk_read:
	push dx						; store DX

	mov ah, 0x02				; ah for reading from disk
	mov al, dh					; read DH sectors
	mov ch, 0
	mov dh, 0
	mov cl, 2 					; each sector is 512 bytes. so read after the boot_sector of 512 bytes.

	int 0x13

	jc disk_error				; not a disk

	pop dx

	cmp dh, al
	jne disk_error				; not all sectors read

	ret							; successful

disk_error:
	mov bx, [disk_error_msg]
	call print_		
	jmp $
