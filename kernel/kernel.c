//extern void main();
void main_asm() {
	char *VideoMemory = (char *)0xb8000;
	*(VideoMemory++) =  'X';
	*(VideoMemory++) = 0x0f;
	*(VideoMemory++) = 0x0f;
	*(VideoMemory++) = 'Y';

/*
	char *hello = "Hello From kernel.c";
	
	int i=0;

	while(hello[i]) {
		*VideoMemory = hello[i];
		VideoMemory++;
		*VideoMemory = 0x0f;
		VideoMemory++;
	}
*/
}