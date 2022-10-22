#include "core_def.h";
__thiscall kernel::kernel()
{
	this->GetProcAddress = GET_API(KERNEL32HASH, kern_GetProcAddress, GETPROCADDRESS);
	this->LoadLibraryA = GET_API(KERNEL32HASH, kern_LoadLibraryA, LOADLIBRARYA);
	this->VirtualAlloc = GET_API(KERNEL32HASH, kern_VirtualAlloc, VIRTUALALLOC);
	this->VirtualFree = GET_API(KERNEL32HASH, kern_VirtualFree, VIRTUALFREE);
	this->VirtualProtect = GET_API(KERNEL32HASH, kern_VirtualProtect, VIRTUALPROTECT);
	this->CreateThread = GET_API(KERNEL32HASH, kern_CreateThread, CREATETHREAD);
	this->GetThreadContext = GET_API(KERNEL32HASH, kern_GetThreadContext, GETTHREADCONTEXT);
	this->GetCurrentProcess = GET_API(KERNEL32HASH, kern_GetCurrentProcess, GETCURRENTPROCESS);
	this->SetThreadContext = GET_API(KERNEL32HASH, kern_SetThreadContext, SETTHREADCONTEXT);
	this->ResumeThread = GET_API(KERNEL32HASH, kern_ResumeThread, RESUMETHREAD);
	this->NtUnmapViewOfSection = GET_API(NTDLLHASH, ntdl_NtUnmapViewOfSection, NTUNMAPVIEWOFSECTION);
	this->Sleep = GET_API(KERNEL32HASH, kern_Sleep, SLEEP);

}
__thiscall msvc::msvc(const kernel& re_kernel)
{
	re_kernel.LoadLibraryA(dll_path);

	this->fclose = GET_API(MSVCHASH, msvc_fclose, FCLOSE);
	this->fopen = GET_API(MSVCHASH, msvc_fopen, FOPEN);
	this->free = GET_API(MSVCHASH, msvc_free, FREE);
	this->fread = GET_API(MSVCHASH, msvc_fread, FREAD);
	this->fwrite = GET_API(MSVCHASH, msvc_fwrite, FWRITE);
	this->fflush = GET_API(MSVCHASH, msvc_fflush, FFLUSH);

	this->malloc = GET_API(MSVCHASH, msvc_malloc, MALLOC);
	this->memcpy = GET_API(MSVCHASH, msvc_memcpy, MEMCPY);
	this->memset = GET_API(MSVCHASH, msvc_memset, MEMSET);
	this->memcmp = GET_API(MSVCHASH, msvc_memcmp, MEMCMP);

	this->strcmp = GET_API(MSVCHASH, msvc_strcmp, STRCMP);
	this->strcpy = GET_API(MSVCHASH, msvc_strcpy, STRCPY);
	this->sprintf = GET_API(MSVCHASH, msvc_sprintf, SPRINTF);
	this->strlen = GET_API(MSVCHASH, msvc_strlen, STRLEN);
	this->strcat = GET_API(MSVCHASH, msvc_strcat, STRCAT);
	
	this->printf = GET_API(MSVCHASH, msvc_printf, PRINTF);
}
__thiscall cabinet::cabinet(const kernel& re_kernel)
{
	re_kernel.LoadLibraryA(dll_path);
	this->CreateCompressor = GET_API(CABINETHASH, cabi_CreateCompressor, CREATECOMPRESSOR);
	this->CreateDecompressor = GET_API(CABINETHASH, cabi_CreateDecompressor, CREATEDECOMPRESSOR);
	this->CloseCompressor = GET_API(CABINETHASH, cabi_CloseCompressor, CLOSECOMPRESSOR);
	this->CloseDecompressor = GET_API(CABINETHASH, cabi_CloseDecompressor, CLOSEDECOMPRESSOR);
	this->Compress = GET_API(CABINETHASH, cabi_Compress, COMPRESS);
	this->Decompress = GET_API(CABINETHASH, cabi_Decompress, DECOMPRESS);
}