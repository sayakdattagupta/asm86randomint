global _start

section .data
    rang dd 100         ; max range is 100

section .text
_start:
    call LOOP
    mov ebx, eax
    mov eax, 1               
    int 0x80         

LOOP:
    rdtsc                    
    mov ebx, [rang] 
    xor edx, edx              
    div ebx                 
    mov eax, edx              
    ret                       

