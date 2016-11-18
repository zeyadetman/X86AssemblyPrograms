;Program Description: Program 1
;Author: Zeyad Etman
;SeatNo: 2013170177
;section: 8
INCLUDE Irvine32.inc

;INCLUDE C:\Irvine\Irvine32.inc
;INCLUDELIB C:\Irvine\Irvine32.lib
;INCLUDELIB C:\Irvine\User32.lib
;INCLUDELIB C:\Irvine\Kernel32.lib
Str_ucase PROTO,
	pString:PTR BYTE
.data
       stringLength=100
       string BYTE stringLength+1 DUP(?)
.code
start PROC
       mov edx,OFFSET string
       mov ecx,stringLength
       call ReadString
	INVOKE Str_ucase,ADDR string
    call writestring
    call crlf
    call waitmsg
	exit
start ENDP
END start
