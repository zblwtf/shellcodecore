; Listing generated by Microsoft (R) Optimizing Compiler Version 19.32.31332.0 

	TITLE	C:\Users\23035\Desktop\Home\C++\shellcodecore\out\iat_relocation.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	??0workspace@@QAE@AAUmsvc@@@Z			; workspace::workspace
PUBLIC	??1workspace@@QAE@XZ				; workspace::~workspace
PUBLIC	?Proc@@YAIAAUkernel@@AAUmsvc@@AAUlogstream@@AAUworkspace@@KPAX@Z ; Proc
PUBLIC	_entry@4
EXTRN	??0kernel@@QAE@XZ:PROC				; kernel::kernel
EXTRN	??0msvc@@QAE@ABUkernel@@@Z:PROC			; msvc::msvc
EXTRN	??0cabinet@@QAE@ABUkernel@@@Z:PROC		; cabinet::cabinet
EXTRN	??0logstream@@QAE@AAUmsvc@@PBD@Z:PROC		; logstream::logstream
EXTRN	??1logstream@@QAE@XZ:PROC			; logstream::~logstream
EXTRN	?flush@logstream@@QAEXXZ:PROC			; logstream::flush
EXTRN	??6logstream@@QAEAAU0@H@Z:PROC			; logstream::operator<<
EXTRN	??6logstream@@QAEAAU0@PBD@Z:PROC		; logstream::operator<<
; Function compile flags: /Ogspy
;	COMDAT _entry@4
_TEXT	SEGMENT
_logstream$ = -1284					; size = 1044
_cabinet$ = -240					; size = 36
_msvc$ = -204						; size = 72
_workspace$ = -132					; size = 84
_kernel$ = -48						; size = 44
_image_base$ = -4					; size = 4
_pe_base$ = 8						; size = 4
_entry@4 PROC						; COMDAT
; File C:\Users\23035\Desktop\Home\C++\AddShell\shellcode\iat_relocation.cpp
; Line 263
	push	ebp
	mov	ebp, esp
	sub	esp, 1284				; 00000504H
; Line 272
	lea	ecx, DWORD PTR _kernel$[ebp]
	call	??0kernel@@QAE@XZ			; kernel::kernel
; Line 273
	lea	eax, DWORD PTR _kernel$[ebp]
	push	eax
	lea	ecx, DWORD PTR _msvc$[ebp]
	call	??0msvc@@QAE@ABUkernel@@@Z		; msvc::msvc
; Line 274
	lea	eax, DWORD PTR _kernel$[ebp]
	push	eax
	lea	ecx, DWORD PTR _cabinet$[ebp]
	call	??0cabinet@@QAE@ABUkernel@@@Z		; cabinet::cabinet
; Line 275
	lea	eax, DWORD PTR _msvc$[ebp]
	push	eax
	lea	ecx, DWORD PTR _workspace$[ebp]
	call	??0workspace@@QAE@AAUmsvc@@@Z		; workspace::workspace
; Line 276
	mov	eax, DWORD PTR _workspace$[ebp+40]
	lea	ecx, DWORD PTR _logstream$[ebp]
	push	DWORD PTR [eax]
	lea	eax, DWORD PTR _msvc$[ebp]
	push	eax
	call	??0logstream@@QAE@AAUmsvc@@PBD@Z	; logstream::logstream
; Line 277
	mov	eax, DWORD PTR _workspace$[ebp+40]
	lea	ecx, DWORD PTR _logstream$[ebp]
	push	DWORD PTR [eax]
	call	??6logstream@@QAEAAU0@PBD@Z		; logstream::operator<<
; Line 278
	lea	ecx, DWORD PTR _logstream$[ebp]
	call	?flush@logstream@@QAEXXZ		; logstream::flush
; Line 281
	push	eax
; Line 282
	mov	eax, DWORD PTR fs:48
; Line 283
	mov	eax, DWORD PTR [eax+8]
; Line 284
	mov	DWORD PTR _image_base$[ebp], eax
; Line 285
	push	eax
; Line 287
	lea	eax, DWORD PTR _workspace$[ebp]
	push	DWORD PTR _image_base$[ebp]
	push	DWORD PTR _pe_base$[ebp]
	push	eax
	lea	eax, DWORD PTR _logstream$[ebp]
	push	eax
	lea	eax, DWORD PTR _msvc$[ebp]
	push	eax
	lea	eax, DWORD PTR _kernel$[ebp]
	push	eax
	call	?Proc@@YAIAAUkernel@@AAUmsvc@@AAUlogstream@@AAUworkspace@@KPAX@Z ; Proc
	add	esp, 24					; 00000018H
; Line 288
	lea	ecx, DWORD PTR _logstream$[ebp]
	call	??1logstream@@QAE@XZ			; logstream::~logstream
	lea	ecx, DWORD PTR _workspace$[ebp]
	call	??1workspace@@QAE@XZ			; workspace::~workspace
	xor	eax, eax
; Line 289
	leave
	ret	4
_entry@4 ENDP
_TEXT	ENDS
; Function compile flags: /Ogspy
;	COMDAT ?Proc@@YAIAAUkernel@@AAUmsvc@@AAUlogstream@@AAUworkspace@@KPAX@Z
_TEXT	SEGMENT
_str_format$ = -32					; size = 4
_str_format_s$ = -28					; size = 4
_lpNtHdr$1$ = -24					; size = 4
_block_relocation$1$ = -20				; size = 4
_entries_relocation$1$ = -16				; size = 4
tv651 = -16						; size = 4
_delta$1$ = -12						; size = 4
_processed_relocation$1$ = -8				; size = 4
_dir_relocations$2$ = -4				; size = 4
_kernel$ = 8						; size = 4
_handle_module$1$ = 12					; size = 4
_msvc$ = 12						; size = 4
_logstream$ = 16					; size = 4
_workspace$ = 20					; size = 4
tv671 = 24						; size = 4
_address_relocations$1$ = 24				; size = 4
_pe_base$ = 24						; size = 4
_current_base$ = 28					; size = 4
?Proc@@YAIAAUkernel@@AAUmsvc@@AAUlogstream@@AAUworkspace@@KPAX@Z PROC ; Proc, COMDAT
; File C:\Users\23035\Desktop\Home\C++\AddShell\shellcode\iat_relocation.cpp
; Line 162
	sub	esp, 32					; 00000020H
; Line 166
	mov	eax, DWORD PTR _pe_base$[esp+28]
	push	ebx
; Line 168
	mov	ebx, DWORD PTR _kernel$[esp+32]
	push	ebp
	push	esi
	push	edi
	mov	edi, DWORD PTR [eax+60]
	push	DWORD PTR _current_base$[esp+44]
	add	edi, eax
	mov	DWORD PTR _str_format$[esp+52], 680997	; 000a6425H
	mov	DWORD PTR _str_format_s$[esp+52], 684837 ; 000a7325H
	mov	DWORD PTR _lpNtHdr$1$[esp+52], edi
	mov	esi, DWORD PTR [edi+80]
	call	DWORD PTR [ebx+32]
	push	eax
	call	DWORD PTR [ebx+40]
; Line 169
	mov	ecx, DWORD PTR _logstream$[esp+44]
	push	11111					; 00002b67H
	call	??6logstream@@QAEAAU0@H@Z		; logstream::operator<<
; Line 170
	mov	ecx, DWORD PTR _logstream$[esp+44]
	call	?flush@logstream@@QAEXXZ		; logstream::flush
; Line 171
	push	64					; 00000040H
	push	12288					; 00003000H
	push	esi
	push	DWORD PTR _current_base$[esp+56]
	call	DWORD PTR [ebx+8]
; Line 174
	mov	ebx, DWORD PTR _msvc$[esp+44]
	mov	ebp, eax
	sub	eax, DWORD PTR [edi+52]
	push	eax
	mov	DWORD PTR _delta$1$[esp+52], eax
	lea	eax, DWORD PTR _str_format$[esp+52]
	push	eax
	mov	DWORD PTR [edi+52], ebp
	call	DWORD PTR [ebx]
; Line 176
	push	DWORD PTR [edi+84]
	push	DWORD PTR _pe_base$[esp+56]
	push	ebp
	call	DWORD PTR [ebx+4]
; Line 178
	movzx	esi, WORD PTR [edi+20]
	add	esp, 20					; 00000014H
	movzx	eax, WORD PTR [edi+6]
	add	esi, 44					; 0000002cH
; Line 180
	test	eax, eax
	je	SHORT $LN3@Proc
; Line 163
	add	esi, edi
	mov	edi, eax
$LL4@Proc:
; Line 185
	push	DWORD PTR [esi-4]
	mov	eax, DWORD PTR [esi]
	add	eax, DWORD PTR _pe_base$[esp+48]
	push	eax
	mov	eax, DWORD PTR [esi-8]
	add	eax, ebp
	push	eax
	call	DWORD PTR [ebx+4]
	add	esp, 12					; 0000000cH
; Line 186
	lea	esi, DWORD PTR [esi+40]
	sub	edi, 1
	jne	SHORT $LL4@Proc
	mov	edi, DWORD PTR _lpNtHdr$1$[esp+48]
$LN3@Proc:
; Line 188
	mov	eax, DWORD PTR [edi+160]
	mov	ecx, DWORD PTR [edi+164]
; Line 189
	add	eax, ebp
	mov	DWORD PTR _address_relocations$1$[esp+44], eax
; Line 190
	xor	eax, eax
	mov	DWORD PTR _dir_relocations$2$[esp+48], ecx
; Line 191
	test	ecx, ecx
	je	SHORT $LN6@Proc
	mov	edi, DWORD PTR _address_relocations$1$[esp+44]
$LL5@Proc:
; Line 195
	lea	edx, DWORD PTR [eax+edi]
; Line 196
	add	eax, 8
	mov	DWORD PTR _block_relocation$1$[esp+48], edx
; Line 198
	mov	edx, DWORD PTR [edx+4]
	sub	edx, 8
	shr	edx, 1
; Line 199
	lea	ebx, DWORD PTR [eax+edi]
	push	0
	mov	DWORD PTR _entries_relocation$1$[esp+52], ebx
	pop	esi
; Line 200
	je	SHORT $LN8@Proc
; Line 195
	mov	ebx, DWORD PTR _block_relocation$1$[esp+48]
	lea	eax, DWORD PTR [eax+edx*2]
	mov	edi, DWORD PTR _entries_relocation$1$[esp+48]
	mov	DWORD PTR _processed_relocation$1$[esp+48], eax
	mov	eax, DWORD PTR _delta$1$[esp+48]
$LL9@Proc:
; Line 204
	movzx	ecx, WORD PTR [edi+esi*2]
	mov	DWORD PTR tv651[esp+48], 4096		; 00001000H
	cmp	cx, WORD PTR tv651[esp+48]
	jb	SHORT $LN7@Proc
; Line 209
	and	ecx, 4095				; 00000fffH
	add	ecx, DWORD PTR [ebx]
; Line 210
	add	DWORD PTR [ecx+ebp], eax
$LN7@Proc:
; Line 200
	inc	esi
	cmp	esi, edx
	jb	SHORT $LL9@Proc
	mov	eax, DWORD PTR _processed_relocation$1$[esp+48]
	mov	ecx, DWORD PTR _dir_relocations$2$[esp+48]
	mov	edi, DWORD PTR _address_relocations$1$[esp+44]
$LN8@Proc:
; Line 191
	cmp	eax, ecx
	jb	SHORT $LL5@Proc
	mov	ebx, DWORD PTR _msvc$[esp+44]
	mov	edi, DWORD PTR _lpNtHdr$1$[esp+48]
$LN6@Proc:
; Line 215
	mov	edi, DWORD PTR [edi+128]
	add	edi, 12					; 0000000cH
; Line 219
	add	edi, ebp
	jmp	$LN42@Proc
$LL10@Proc:
; Line 221
	lea	esi, DWORD PTR [eax+ebp]
; Line 222
	lea	eax, DWORD PTR _str_format$[esp+48]
	push	1
	push	eax
	call	DWORD PTR [ebx]
; Line 223
	mov	eax, DWORD PTR _kernel$[esp+52]
	pop	ecx
	pop	ecx
	push	esi
	call	DWORD PTR [eax]
	mov	esi, eax
; Line 224
	lea	eax, DWORD PTR _str_format$[esp+48]
	push	2
	push	eax
	mov	DWORD PTR _handle_module$1$[esp+52], esi
	call	DWORD PTR [ebx]
	pop	ecx
	pop	ecx
; Line 225
	test	esi, esi
	je	$LN40@Proc
; Line 231
	lea	eax, DWORD PTR _str_format$[esp+48]
	push	3
	push	eax
	call	DWORD PTR [ebx]
; Line 233
	mov	edi, DWORD PTR [edi+4]
; Line 234
	lea	eax, DWORD PTR _str_format$[esp+56]
	push	4
	push	eax
	add	edi, ebp
	call	DWORD PTR [ebx]
	add	esp, 16					; 00000010H
	jmp	SHORT $LN43@Proc
$LL12@Proc:
; Line 237
	lea	eax, DWORD PTR _str_format$[esp+48]
	push	5
	push	eax
	call	DWORD PTR [ebx]
; Line 238
	cmp	DWORD PTR [edi], 0
	mov	eax, DWORD PTR [ebx]
	pop	ecx
	pop	ecx
	lea	ecx, DWORD PTR _str_format$[esp+48]
	jge	SHORT $LN17@Proc
; Line 240
	push	6
	push	ecx
	call	eax
; Line 241
	movzx	eax, WORD PTR [edi]
	pop	ecx
	pop	ecx
; Line 242
	push	eax
	mov	eax, DWORD PTR _kernel$[esp+48]
	push	esi
	call	DWORD PTR [eax+4]
	mov	DWORD PTR [edi], eax
; Line 243
	lea	eax, DWORD PTR _str_format$[esp+48]
	push	7
	push	eax
	call	DWORD PTR [ebx]
	pop	ecx
	pop	ecx
; Line 244
	jmp	SHORT $LN18@Proc
$LN17@Proc:
; Line 247
	push	8
	push	ecx
	call	eax
; Line 249
	mov	esi, DWORD PTR [edi]
	lea	eax, DWORD PTR _str_format_s$[esp+56]
	add	esi, 2
	add	esi, ebp
	push	esi
	push	eax
	call	DWORD PTR [ebx]
; Line 250
	lea	eax, DWORD PTR _str_format$[esp+64]
	push	9
	push	eax
	call	DWORD PTR [ebx]
; Line 251
	mov	eax, DWORD PTR _kernel$[esp+68]
	add	esp, 24					; 00000018H
	push	esi
	mov	esi, DWORD PTR _handle_module$1$[esp+48]
	push	esi
	call	DWORD PTR [eax+4]
; Line 252
	mov	DWORD PTR [edi], eax
$LN18@Proc:
; Line 255
	add	edi, 4
$LN43@Proc:
; Line 235
	cmp	DWORD PTR [edi], 0
	jne	SHORT $LL12@Proc
; Line 258
	mov	edi, DWORD PTR tv671[esp+44]
	add	edi, 20					; 00000014H
$LN42@Proc:
	mov	eax, DWORD PTR [edi]
	mov	DWORD PTR tv671[esp+44], edi
	test	eax, eax
	jne	$LL10@Proc
$LN40@Proc:
; Line 260
	pop	edi
	pop	esi
	pop	ebp
	xor	eax, eax
	pop	ebx
; Line 261
	add	esp, 32					; 00000020H
	ret	0
?Proc@@YAIAAUkernel@@AAUmsvc@@AAUlogstream@@AAUworkspace@@KPAX@Z ENDP ; Proc
_TEXT	ENDS
; Function compile flags: /Ogspy
;	COMDAT ??1workspace@@QAE@XZ
_TEXT	SEGMENT
??1workspace@@QAE@XZ PROC				; workspace::~workspace, COMDAT
; _this$ = ecx
; File C:\Users\23035\Desktop\Home\C++\AddShell\shellcode\iat_relocation.cpp
; Line 148
	push	esi
	push	edi
; Line 149
	push	10					; 0000000aH
	mov	edi, ecx
	pop	esi
$LL10@workspace:
; Line 150
	dec	esi
; Line 152
	cmp	DWORD PTR [edi+esi*4], 0
	je	SHORT $LN5@workspace
; Line 156
	mov	eax, DWORD PTR [edi+80]
	push	DWORD PTR [edi+esi*4]
	call	DWORD PTR [eax+24]
	pop	ecx
$LN5@workspace:
; Line 150
	test	esi, esi
	jne	SHORT $LL10@workspace
; Line 159
	pop	edi
	pop	esi
	ret	0
??1workspace@@QAE@XZ ENDP				; workspace::~workspace
_TEXT	ENDS
; Function compile flags: /Ogspy
;	COMDAT ??0workspace@@QAE@AAUmsvc@@@Z
_TEXT	SEGMENT
_ref$ = 8						; size = 4
??0workspace@@QAE@AAUmsvc@@@Z PROC			; workspace::workspace, COMDAT
; _this$ = ecx
; File C:\Users\23035\Desktop\Home\C++\AddShell\shellcode\iat_relocation.cpp
; Line 30
	push	ebx
	push	esi
	mov	esi, ecx
; Line 32
	xor	ebx, ebx
	push	40					; 00000028H
	push	ebx
	push	esi
	lea	eax, DWORD PTR [esi+4]
	mov	DWORD PTR [esi+40], esi
	mov	DWORD PTR [esi+44], eax
	lea	eax, DWORD PTR [esi+8]
	mov	DWORD PTR [esi+48], eax
	lea	eax, DWORD PTR [esi+12]
	mov	DWORD PTR [esi+52], eax
	lea	eax, DWORD PTR [esi+16]
	mov	DWORD PTR [esi+56], eax
	lea	eax, DWORD PTR [esi+20]
	mov	DWORD PTR [esi+60], eax
	lea	eax, DWORD PTR [esi+24]
	mov	DWORD PTR [esi+64], eax
	lea	eax, DWORD PTR [esi+28]
	mov	DWORD PTR [esi+68], eax
	lea	eax, DWORD PTR [esi+32]
	mov	DWORD PTR [esi+72], eax
	lea	eax, DWORD PTR [esi+36]
	mov	DWORD PTR [esi+76], eax
	mov	eax, DWORD PTR _ref$[esp+16]
	mov	DWORD PTR [esi+80], eax
	call	DWORD PTR [eax+8]
; Line 35
	mov	eax, DWORD PTR [esi+80]
	push	31					; 0000001fH
	call	DWORD PTR [eax+12]
	mov	ecx, DWORD PTR [esi+40]
	mov	DWORD PTR [ecx], eax
; Line 36
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax], 67			; 00000043H
; Line 37
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+1], 58			; 0000003aH
; Line 38
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+2], 47			; 0000002fH
; Line 39
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+3], 85			; 00000055H
; Line 40
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+4], 115			; 00000073H
; Line 41
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+5], 101			; 00000065H
; Line 42
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+6], 114			; 00000072H
; Line 43
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+7], 115			; 00000073H
; Line 44
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+8], 47			; 0000002fH
; Line 45
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+9], 50			; 00000032H
; Line 46
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+10], 51			; 00000033H
; Line 47
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+11], 48			; 00000030H
; Line 48
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+12], 51			; 00000033H
; Line 49
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+13], 53			; 00000035H
; Line 50
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+14], 47			; 0000002fH
; Line 51
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+15], 68			; 00000044H
; Line 52
	mov	eax, DWORD PTR [esi+40]
; Line 69
	push	31					; 0000001fH
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+16], 101			; 00000065H
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+17], 115			; 00000073H
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+18], 107			; 0000006bH
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+19], 116			; 00000074H
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+20], 111			; 0000006fH
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+21], 112			; 00000070H
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+22], 47			; 0000002fH
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+23], 108			; 0000006cH
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+24], 111			; 0000006fH
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+25], 103			; 00000067H
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+26], 46			; 0000002eH
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+27], 116			; 00000074H
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+28], 120			; 00000078H
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+29], 116			; 00000074H
	mov	eax, DWORD PTR [esi+40]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+30], bl
	mov	eax, DWORD PTR [esi+80]
	call	DWORD PTR [eax+12]
	mov	ecx, DWORD PTR [esi+44]
	mov	DWORD PTR [ecx], eax
; Line 70
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax], 73			; 00000049H
; Line 71
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+1], 110			; 0000006eH
; Line 72
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+2], 105			; 00000069H
; Line 73
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+3], 116			; 00000074H
; Line 74
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+4], 32			; 00000020H
; Line 75
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+5], 83			; 00000053H
; Line 76
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+6], 117			; 00000075H
; Line 77
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+7], 99			; 00000063H
; Line 78
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+8], 99			; 00000063H
; Line 79
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+9], 101			; 00000065H
; Line 80
	mov	eax, DWORD PTR [esi+44]
; Line 103
	push	17					; 00000011H
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+10], 115			; 00000073H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+11], 115			; 00000073H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+12], 101			; 00000065H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+13], 100			; 00000064H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+14], 32			; 00000020H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+15], 119			; 00000077H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+16], 105			; 00000069H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+17], 116			; 00000074H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+18], 104			; 00000068H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+19], 32			; 00000020H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+20], 76			; 0000004cH
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+21], 111			; 0000006fH
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+22], 103			; 00000067H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+23], 115			; 00000073H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+24], 116			; 00000074H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+25], 114			; 00000072H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+26], 101			; 00000065H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+27], 97			; 00000061H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+28], 109			; 0000006dH
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+29], 33			; 00000021H
	mov	eax, DWORD PTR [esi+44]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+30], bl
	mov	eax, DWORD PTR [esi+80]
	call	DWORD PTR [eax+12]
	mov	ecx, DWORD PTR [esi+48]
	mov	DWORD PTR [ecx], eax
; Line 104
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax], 100			; 00000064H
; Line 105
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+1], 101			; 00000065H
; Line 106
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+2], 99			; 00000063H
; Line 107
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+3], 111			; 0000006fH
; Line 108
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
; Line 123
	push	8
	mov	BYTE PTR [eax+4], 109			; 0000006dH
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+5], 112			; 00000070H
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+6], 114			; 00000072H
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+7], 101			; 00000065H
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+8], 115			; 00000073H
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+9], 115			; 00000073H
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+10], 32			; 00000020H
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+11], 115			; 00000073H
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+12], 105			; 00000069H
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+13], 122			; 0000007aH
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+14], 101			; 00000065H
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+15], 58			; 0000003aH
	mov	eax, DWORD PTR [esi+48]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+16], bl
	mov	eax, DWORD PTR [esi+80]
	call	DWORD PTR [eax+12]
	mov	ecx, DWORD PTR [esi+52]
; Line 134
	push	8
	mov	DWORD PTR [ecx], eax
	mov	eax, DWORD PTR [esi+52]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax], 95			; 0000005fH
	mov	eax, DWORD PTR [esi+52]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+1], 97			; 00000061H
	mov	eax, DWORD PTR [esi+52]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+2], 99			; 00000063H
	mov	eax, DWORD PTR [esi+52]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+3], 109			; 0000006dH
	mov	eax, DWORD PTR [esi+52]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+4], 100			; 00000064H
	mov	eax, DWORD PTR [esi+52]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+5], 108			; 0000006cH
	mov	eax, DWORD PTR [esi+52]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+6], 110			; 0000006eH
	mov	eax, DWORD PTR [esi+52]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+7], bl
	mov	eax, DWORD PTR [esi+80]
	call	DWORD PTR [eax+12]
	mov	ecx, DWORD PTR [esi+56]
	add	esp, 32					; 00000020H
	mov	DWORD PTR [ecx], eax
; Line 135
	mov	eax, DWORD PTR [esi+56]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax], 95			; 0000005fH
; Line 136
	mov	eax, DWORD PTR [esi+56]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+1], 119			; 00000077H
; Line 137
	mov	eax, DWORD PTR [esi+56]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+2], 99			; 00000063H
; Line 138
	mov	eax, DWORD PTR [esi+56]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+3], 109			; 0000006dH
; Line 139
	mov	eax, DWORD PTR [esi+56]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+4], 100			; 00000064H
; Line 140
	mov	eax, DWORD PTR [esi+56]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+5], 108			; 0000006cH
; Line 141
	mov	eax, DWORD PTR [esi+56]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+6], 110			; 0000006eH
; Line 142
	mov	eax, DWORD PTR [esi+56]
	mov	eax, DWORD PTR [eax]
	mov	BYTE PTR [eax+7], bl
; Line 146
	mov	eax, esi
	pop	esi
	pop	ebx
	ret	4
??0workspace@@QAE@AAUmsvc@@@Z ENDP			; workspace::workspace
_TEXT	ENDS
END
