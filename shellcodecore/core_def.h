#pragma once

#include "base.h"

typedef struct kernel
{
	LOADLIBRARYA LoadLibraryA;
	GETPROCADDRESS GetProcAddress;
	VIRTUALALLOC VirtualAlloc;
	VIRTUALFREE VirtualFree;
	VIRTUALPROTECT VirtualProtect;
	CREATETHREAD CreateThread;
	SETTHREADCONTEXT SetThreadContext;
	GETTHREADCONTEXT GetThreadContext;
	GETCURRENTPROCESS GetCurrentProcess;
	RESUMETHREAD ResumeThread;
	SLEEP Sleep;
	
	NTUNMAPVIEWOFSECTION NtUnmapViewOfSection;
	kernel();
}kernel;
typedef struct msvc
{
public:
	PRINTF printf;
	MEMCPY memcpy;
	MEMSET memset;
	MALLOC malloc;
	MEMCMP memcmp;
	

	FOPEN fopen;
	FCLOSE fclose;
	FREE free;
	FREAD fread;
	FWRITE fwrite;
	FFLUSH fflush;
	STRCMP strcmp;
	STRCPY strcpy;
	SPRINTF sprintf;
	STRLEN strlen;
	STRCAT strcat;
	msvc(const kernel& re_kernel);
private:
	const char dll_path[11] = { 'm','s','v','c','r','t','.','d','l','l',0 };
}msvc;
typedef struct cabinet
{
public:
	CREATECOMPRESSOR CreateCompressor;
	CREATEDECOMPRESSOR CreateDecompressor;
	CLOSECOMPRESSOR CloseCompressor;
	CLOSEDECOMPRESSOR CloseDecompressor;
	COMPRESS Compress;
	DECOMPRESS Decompress;
	cabinet(const kernel& re_kernel);
private:
	const char dll_path[12] = { 'c','a','b','i','n','e','t','.','d','l','l',0 };
}cabinet;
