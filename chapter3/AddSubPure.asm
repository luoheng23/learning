; this program adds and substracts 32-bit integers.

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD
DumpRegs PROTO

.code
addSubPure PROC
	mov eax, 10000h
	add eax, 40000h
	sub eax, 20000h
	call DumpRegs
	INVOKE ExitProcess, 0
addSubPure ENDP
END addSubPure