
global _start

section .text
  
  _start:
 

;  4d65736861726920416c68616d6d616469203a290d0a   ->Meshari Alhammadi :)

push 0x00  ; null

push 0x0a0d293a
push 0x20696461
push 0x6d6d6168   ; push Our ascii string to the stack
push 0x6c412069
push 0x72616873
push 0x654d3e2d


xor ecx, ecx
xor edx, edx

mov eax, esp

strlen:  ; calculates the length of the ascii string in the stack
   
   mov cl, byte [eax]
   ;dec ecx
   inc eax
   inc edx
   cmp ecx, 0
   jnz strlen ; stop at null 0x00

dec edx ; In order not to count a null character '\0' -> 0x00



mov eax,0x4
mov ebx,0x1
mov ecx, esp

int 0x80

; exit

mov eax , 0x1
mov ebx, 0x4
int 0x80