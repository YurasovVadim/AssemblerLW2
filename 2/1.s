	global	_start
	%include "syscall.mac"
section	.text
_start:				
	WRITE msg1,len1
	READ msg,1024
	WRITE msg2,len2
	WRITE msg, 1024
	EXIT	
section .data
msg1:							
	DB "Input text:", 0xa	
len1	EQU	$ - msg1 
msg2:							
	DB "Output text:", 0xa	
len2	EQU	$ - msg2 
section .bss
msg resb 1024
