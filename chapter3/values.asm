
; BYTE
value1 BYTE 'A'
value2 BYTE 0
value3 BYTE 255
value4 SBYTE -128
value5 SBYTE 127

value6 BYTE ?

; three arrays
list BYTE 10, 20, 30, 40
     BYTE 50, 60, 70, 80
     BYTE 81, 82, 83, 84

; strings, 以数值0结尾的字符串
greeting1 BYTE "Good afternoon", 0
greeting2 BYTE "Good, night", 0

; 0Dh回车，0Ah换行

; DUP
g BYTE 20 DUP(0)
t BYTE 20 DUP(?)
z BYTE 4 DUP("STACK") ; "STACKSTACKSTACKSTACK"

; WORD

word1 WORD 65535
word2 SWORD -32768
word3 WORD ?

myList WORD 1, 2, 3, 4, 5

array WORD 5 DUP(?)

; DWORD

val1 DWORD 12345678h
val2 SDWORD -2147483648
val3 DWORD 20 DUP(?)

myListD DWORD 1, 2, 3, 4, 5

; QWORD
quad1 QWORD 123423423423423h

; TBYTE
tVal1 TBYTE 1000000000h

rVal1 REAL4 -2.1

; 定义未初始化数据优于.data
.data?
bigArray DWORD 5000 DUP(?)

; 符号常量
; = 连接整数表达式
lists BYTE 10, 20, 30, 40
size = ($ - lists)

L WORD 1000h, 2000h, 3000h, 4000h
Llen = ($ - L) / 2

PI EQU <3.1416>
pressKey EQU <"Press any key to continue...", 0>
