; Listing generated by Microsoft (R) Optimizing Compiler Version 19.32.31332.0 

	TITLE	C:\Users\23035\Desktop\Home\C++\shellcodecore\out\logstream.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	??0logstream@@QAE@AAUmsvc@@PBD@Z		; logstream::logstream
PUBLIC	??1logstream@@QAE@XZ				; logstream::~logstream
PUBLIC	?write@logstream@@QAEKPBXKK@Z			; logstream::write
PUBLIC	?flush@logstream@@QAEXXZ			; logstream::flush
PUBLIC	??6logstream@@QAEAAU0@H@Z			; logstream::operator<<
PUBLIC	??6logstream@@QAEAAU0@PBD@Z			; logstream::operator<<
; Function compile flags: /Ogspy
;	COMDAT ??6logstream@@QAEAAU0@PBD@Z
_TEXT	SEGMENT
_cstr$ = 8						; size = 4
??6logstream@@QAEAAU0@PBD@Z PROC			; logstream::operator<<, COMDAT
; _this$ = ecx
; File C:\Users\23035\Desktop\Home\C++\shellcodecore\logstream.cpp
; Line 24
	push	esi
; Line 26
	push	DWORD PTR _cstr$[esp]
	mov	esi, ecx
	mov	eax, DWORD PTR [esi+1036]
	call	DWORD PTR [eax+52]
	pop	ecx
; Line 27
	push	eax
	push	1
	push	DWORD PTR _cstr$[esp+8]
	mov	ecx, esi
	call	?write@logstream@@QAEKPBXKK@Z		; logstream::write
; Line 28
	mov	eax, esi
	pop	esi
; Line 29
	ret	4
??6logstream@@QAEAAU0@PBD@Z ENDP			; logstream::operator<<
_TEXT	ENDS
; Function compile flags: /Ogspy
;	COMDAT ??6logstream@@QAEAAU0@H@Z
_TEXT	SEGMENT
_buffer$ = -260						; size = 256
_str_format$ = -4					; size = 3
_number$ = 8						; size = 4
??6logstream@@QAEAAU0@H@Z PROC				; logstream::operator<<, COMDAT
; _this$ = ecx
; File C:\Users\23035\Desktop\Home\C++\shellcodecore\logstream.cpp
; Line 14
	push	ebp
	mov	ebp, esp
	sub	esp, 260				; 00000104H
	push	esi
	mov	esi, ecx
; Line 16
	lea	ecx, DWORD PTR _buffer$[ebp]
	push	256					; 00000100H
	push	0
	push	ecx
	mov	eax, DWORD PTR [esi+1036]
	call	DWORD PTR [eax+8]
; Line 18
	push	DWORD PTR _number$[ebp]
	mov	eax, DWORD PTR [esi+1036]
	lea	ecx, DWORD PTR _str_format$[ebp]
	push	ecx
	lea	ecx, DWORD PTR _buffer$[ebp]
	mov	WORD PTR _str_format$[ebp], 25637	; 00006425H
	push	ecx
	mov	BYTE PTR _str_format$[ebp+2], 0
	call	DWORD PTR [eax+48]
; Line 19
	mov	eax, DWORD PTR [esi+1036]
	lea	ecx, DWORD PTR _buffer$[ebp]
	push	ecx
	call	DWORD PTR [eax+52]
	add	esp, 28					; 0000001cH
; Line 20
	mov	ecx, esi
	push	eax
	push	1
	lea	eax, DWORD PTR _buffer$[ebp]
	push	eax
	call	?write@logstream@@QAEKPBXKK@Z		; logstream::write
; Line 21
	mov	eax, esi
	pop	esi
; Line 22
	leave
	ret	4
??6logstream@@QAEAAU0@H@Z ENDP				; logstream::operator<<
_TEXT	ENDS
; Function compile flags: /Ogspy
;	COMDAT ?flush@logstream@@QAEXXZ
_TEXT	SEGMENT
?flush@logstream@@QAEXXZ PROC				; logstream::flush, COMDAT
; _this$ = ecx
; File C:\Users\23035\Desktop\Home\C++\shellcodecore\logstream.cpp
; Line 62
	push	esi
	push	edi
	mov	edi, ecx
; Line 63
	mov	eax, DWORD PTR [edi]
	lea	esi, DWORD PTR [edi+4]
	push	DWORD PTR [edi+1032]
	mov	edx, DWORD PTR [edi+1036]
	mov	eax, DWORD PTR [eax]
	inc	eax
	push	eax
	push	1
	push	esi
	call	DWORD PTR [edx+32]
; Line 64
	mov	eax, DWORD PTR [edi+1036]
	push	DWORD PTR [edi+1032]
	call	DWORD PTR [eax+36]
; Line 65
	mov	eax, DWORD PTR [edi+1036]
	push	1024					; 00000400H
	push	0
	push	esi
	call	DWORD PTR [eax+8]
; Line 66
	and	DWORD PTR [edi+1040], 0
	add	esp, 32					; 00000020H
	pop	edi
	pop	esi
; Line 67
	ret	0
?flush@logstream@@QAEXXZ ENDP				; logstream::flush
_TEXT	ENDS
; Function compile flags: /Ogspy
;	COMDAT ?write@logstream@@QAEKPBXKK@Z
_TEXT	SEGMENT
_source$ = 8						; size = 4
_size$ = 12						; size = 4
_nmemb$ = 16						; size = 4
?write@logstream@@QAEKPBXKK@Z PROC			; logstream::write, COMDAT
; _this$ = ecx
; File C:\Users\23035\Desktop\Home\C++\shellcodecore\logstream.cpp
; Line 31
	push	ebx
	push	ebp
	push	esi
	mov	esi, ecx
; Line 32
	mov	ebx, 1024				; 00000400H
	push	edi
; Line 33
	mov	edi, DWORD PTR _size$[esp+12]
; Line 34
	xor	ebp, ebp
	imul	edi, DWORD PTR _nmemb$[esp+12]
	mov	eax, DWORD PTR [esi]
	sub	ebx, DWORD PTR [eax]
; Line 38
	cmp	ebx, edi
	jae	SHORT $LN13@write
$LL2@write:
; Line 50
	mov	eax, DWORD PTR [esi]
	mov	ecx, DWORD PTR [esi+1036]
	push	ebx
	push	DWORD PTR _source$[esp+16]
	mov	eax, DWORD PTR [eax]
	add	eax, 4
	add	eax, esi
	push	eax
	call	DWORD PTR [ecx+4]
; Line 51
	push	DWORD PTR [esi+1032]
	mov	eax, DWORD PTR [esi+1036]
	lea	ecx, DWORD PTR [esi+4]
	push	1024					; 00000400H
	push	1
	push	ecx
	call	DWORD PTR [eax+32]
; Line 53
	mov	eax, DWORD PTR [esi+1036]
	lea	ecx, DWORD PTR [esi+4]
	push	1024					; 00000400H
	push	0
	push	ecx
	call	DWORD PTR [eax+8]
; Line 56
	and	DWORD PTR [esi+1040], 0
	sub	edi, ebx
	add	esp, 40					; 00000028H
	add	ebp, ebx
	cmp	edi, ebx
	ja	SHORT $LL2@write
$LN13@write:
; Line 40
	mov	eax, DWORD PTR [esi]
	mov	ecx, DWORD PTR [esi+1036]
	push	edi
	push	DWORD PTR _source$[esp+16]
	mov	eax, DWORD PTR [eax]
	add	eax, 4
	add	eax, esi
	push	eax
	call	DWORD PTR [ecx+4]
; Line 45
	add	DWORD PTR [esi+1040], edi
	lea	eax, DWORD PTR [edi+ebp]
	add	esp, 12					; 0000000cH
; Line 59
	pop	edi
	pop	esi
	pop	ebp
	pop	ebx
; Line 60
	ret	12					; 0000000cH
?write@logstream@@QAEKPBXKK@Z ENDP			; logstream::write
_TEXT	ENDS
; Function compile flags: /Ogspy
;	COMDAT ??1logstream@@QAE@XZ
_TEXT	SEGMENT
??1logstream@@QAE@XZ PROC				; logstream::~logstream, COMDAT
; _this$ = ecx
; File C:\Users\23035\Desktop\Home\C++\shellcodecore\logstream.cpp
; Line 9
	push	esi
	mov	esi, ecx
; Line 10
	call	?flush@logstream@@QAEXXZ		; logstream::flush
; Line 11
	mov	eax, DWORD PTR [esi+1036]
	push	DWORD PTR [esi+1032]
	call	DWORD PTR [eax+20]
	pop	ecx
	pop	esi
; Line 12
	ret	0
??1logstream@@QAE@XZ ENDP				; logstream::~logstream
_TEXT	ENDS
; Function compile flags: /Ogspy
;	COMDAT ??0logstream@@QAE@AAUmsvc@@PBD@Z
_TEXT	SEGMENT
_str_format$ = 8					; size = 3
__msvc$ = 8						; size = 4
_log_path$ = 12						; size = 4
??0logstream@@QAE@AAUmsvc@@PBD@Z PROC			; logstream::logstream, COMDAT
; _this$ = ecx
; File C:\Users\23035\Desktop\Home\C++\shellcodecore\logstream.cpp
; Line 3
	push	ebp
	mov	ebp, esp
; Line 2
	mov	edx, DWORD PTR __msvc$[ebp]
	push	esi
	mov	esi, ecx
; Line 4
	push	1024					; 00000400H
	push	0
	lea	eax, DWORD PTR [esi+1040]
	mov	DWORD PTR [esi+1036], edx
	and	DWORD PTR [eax], 0
	mov	DWORD PTR [esi], eax
	lea	eax, DWORD PTR [esi+4]
	push	eax
	call	DWORD PTR [edx+8]
; Line 6
	mov	eax, DWORD PTR [esi+1036]
	lea	ecx, DWORD PTR _str_format$[ebp]
	push	ecx
	push	DWORD PTR _log_path$[ebp]
	mov	WORD PTR _str_format$[ebp], 25207	; 00006277H
	mov	BYTE PTR _str_format$[ebp+2], 0
	call	DWORD PTR [eax+16]
	add	esp, 20					; 00000014H
	mov	DWORD PTR [esi+1032], eax
; Line 7
	mov	eax, esi
	pop	esi
	pop	ebp
	ret	8
??0logstream@@QAE@AAUmsvc@@PBD@Z ENDP			; logstream::logstream
_TEXT	ENDS
END