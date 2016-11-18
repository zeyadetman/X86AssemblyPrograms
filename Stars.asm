;Example:
;4
;Output:
;    ****
;   ****
;  ****
; ****

;Program Description: Program 4
;Author: Zeyad Etman
INCLUDE Irvine32.inc

;INCLUDE C:\Irvine\Irvine32.inc
;INCLUDELIB C:\Irvine\Irvine32.lib
;INCLUDELIB C:\Irvine\User32.lib
;INCLUDELIB C:\Irvine\Kernel32.lib

.data
x dword 0

.code
main PROC
call readint
mov ecx,eax
mov edx,eax
mov ebx,eax
l1:    
    mov ecx,ebx  ; ebx = 5
    l2:
    mov al,' '
    call writechar
    loop l2    
    mov ecx,edx   ;ecx = 5
    l3:
    mov al,'*'
    call writechar
    mov al,' '
    call writechar
    loop l3    
    call crlf    
dec ebx
mov ecx,ebx
jnz l1
call WaitMsg
exit
main ENDP
END main

