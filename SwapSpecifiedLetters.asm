;Example:
;4
;2
;Hello
;Output:
;Hlleo

;Program Description: Program 2
;Author: Zeyad Etman
INCLUDE Irvine32.inc

;INCLUDE C:\Irvine\Irvine32.inc
;INCLUDELIB C:\Irvine\Irvine32.lib
;INCLUDELIB C:\Irvine\User32.lib
;INCLUDELIB C:\Irvine\Kernel32.lib

.data
       x dword ?
       y dword ?
       strlen = 100
       string BYTE strlen+1 DUP(?)
.code
start PROC
       call ReadInt
       mov x, eax
       call ReadInt
       mov y, eax
       mov edx,offset string
       mov ecx,strlen
       call readstring
       mov ecx,x
       mov al,[string+ecx-1]
       mov ebx,y
       mov ah,[string+ebx-1]
       xchg al,[string+ebx-1]
       xchg ah,[string+ecx-1]
       call writestring
       call crlf
       
       call waitmsg
	exit
start ENDP
END start

