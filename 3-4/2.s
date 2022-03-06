SECTION     .text 
GLOBAL      num2decstr 
num2decstr:
     mov ebx, 10
     mov edx, 0
     div ebx
     add edx, 30h
     mov [rdi+rcx-1], dl
     loop num2decstr      
     ret
