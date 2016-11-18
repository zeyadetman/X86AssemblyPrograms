Just enter number.

;Program Description: Program 6
;Author: Zeyad Etman
INCLUDE Irvine32.inc

;INCLUDE C:\Irvine\Irvine32.inc
;INCLUDELIB C:\Irvine\Irvine32.lib
;INCLUDELIB C:\Irvine\User32.lib
;INCLUDELIB C:\Irvine\Kernel32.lib

.data
x dword ?
y dword ?
coun dword ?
z byte " | "
a byte "X  | "
b byte " "

.code
main PROC
call readint
mov x,eax
mov ecx,eax
mov edx,offset a
call writestring
mov al,1
mov edx,offset b
l1:
call writeint
call writestring
add al,1
loop l1
call crlf
mov ecx,x
mov al,'*'
l2:
call writechar
call writechar
call writechar
call writechar
loop l2
call crlf
mov ecx,x
mov y,ecx
inc x
mov ebx,1
mov edx,offset z
l3:
mov eax,ebx
call writeint
movzx edx,al
mov coun,edx
mov al,' '
call writechar
mov al,'|'
call writechar
mov al,' '
call writechar
mov ecx,y
    l4:
    mov eax,edx
    call writeint
    mov al,' '
    call writechar
    mov al,' '
    call writechar
    add edx,coun
    loop l4
    
inc ebx
dec x
mov ecx,x
call crlf
loop l3

call WaitMsg
exit
main ENDP
END main
