; This program adds and substracts 32-bit integers.

INCLUDE Irvine32.inc

.code
main PROC
    mov eax, 10000h
    add eax, 40000h
    sub eax, 20000h
    call DumpRegs
    exit
main ENDP
END main
