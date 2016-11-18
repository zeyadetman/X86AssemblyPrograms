;Example:
;{1,2,5,9,12}
;Output:
;11

;Program Description: Program 5
;Author: Zeyad Etman
INCLUDE Irvine32.inc

;INCLUDE C:\Irvine\Irvine32.inc
;INCLUDELIB C:\Irvine\Irvine32.lib
;INCLUDELIB C:\Irvine\User32.lib
;INCLUDELIB C:\Irvine\Kernel32.lib

.data

.code
main PROC
; if you want the user enter the input
;call readint   ; the length of the array
;sub eax,1
;mov ecx,eax
mov ecx,4   ; hardcored length 
mov bl,0
mov bh,0
call readint
mov bl,al
l1:
call readint
sub al,bl
mov bh,al

loop l1
movzx eax,bh
call writeint
call crlf
call WaitMsg
exit
main ENDP
END main

