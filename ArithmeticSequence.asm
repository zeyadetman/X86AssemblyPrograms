;Example:
;2
;3
;7
;Output:
;2,5,8,11,14,17,20

;start with the first number then add second number, loop third number.

;Program Description: Program 7
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
movzx ebx,al
call readint 
mov x,eax
call readint 
movzx ecx,al

l1:
mov eax,ebx
call writeint
mov al,' '
add ebx,x
call crlf
loop l1


call WaitMsg
exit
main ENDP
END main

