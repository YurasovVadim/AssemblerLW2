%include "syscall.mac"
SECTION .text
GLOBAL _start
EXTERN num2decstr
_start:
mov eax, 1
cpuid 
mov rdi, decstr
mov rcx, decstr.len
call num2decstr
WRITE decstr, decstr.len+1
EXIT
;======================================================
SECTION .data
decstr: db "000000000"
.len: equ $ - decstr
db 0xA
;======================================================
