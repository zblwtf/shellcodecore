#include <windows.h>
#include "getprocaddresswithhash.h"
#include <winternl.h>
#define ROTR32(value, shift)	(((uint32_t) value >> (BYTE) shift) | ((uint32_t) value << (32 - (BYTE) shift)))
#define HASH_KEY						13
typedef struct _MY_PEB_LDR_DATA {
	ULONG Length;
	BOOL Initialized;
	PVOID SsHandle;
	LIST_ENTRY InLoadOrderModuleList;
	LIST_ENTRY InMemoryOrderModuleList;
	LIST_ENTRY InInitializationOrderModuleList;
} MY_PEB_LDR_DATA, * PMY_PEB_LDR_DATA;

typedef struct _MY_LDR_DATA_TABLE_ENTRY
{
	LIST_ENTRY InLoadOrderLinks;
	LIST_ENTRY InMemoryOrderLinks;
	LIST_ENTRY InInitializationOrderLinks;
	PVOID DllBase;
	PVOID EntryPoint;
	ULONG SizeOfImage;
	UNICODE_STRING FullDllName;
	UNICODE_STRING BaseDllName;
} MY_LDR_DATA_TABLE_ENTRY, * PMY_LDR_DATA_TABLE_ENTRY;
LPVOID GetProcAddressWithHash(uint32_t dwModuleHash_, uint32_t dwFunctionHash_)
{
	PPEB PebAddress;
	PMY_PEB_LDR_DATA pLdr;
	PMY_LDR_DATA_TABLE_ENTRY pDataTableEntry;
	PVOID pModuleBase;
	pNt pNTHeader;
	uint32_t dwExportDirRVA;
	PIMAGE_EXPORT_DIRECTORY pExportDir;
	PLIST_ENTRY pNextModule;
	uint32_t dwNumFunctions;
	USHORT usOrdinalTableIndex;
	PDWORD pdwFunctionNameBase;
	PCSTR pFunctionName;
	UNICODE_STRING BaseDllName;
	uint32_t dwModuleHash;
	uint32_t dwFunctionHash;
	PCSTR pTempChar;
	uint32_t i;


#if defined(_WIN64)
	PebAddress = (PPEB)__readgsqword(0x60);
#elif defined(_M_ARM)
	// I can assure you that this is not a mistake. The C compiler improperly emits the proper opcodes
	// necessary to get the PEB.Ldr address
	PebAddress = (PPEB)((ULONG_PTR)_MoveFromCoprocessor(15, 0, 13, 0, 2) + 0);
	__emit(0x00006B1B);
#else
	PebAddress = (PPEB)__readfsdword(0x30);
#endif


	pLdr = (PMY_PEB_LDR_DATA)PebAddress->Ldr;
	pNextModule = pLdr->InLoadOrderModuleList.Flink;
	pDataTableEntry = (PMY_LDR_DATA_TABLE_ENTRY)pNextModule;

	while (pDataTableEntry->DllBase != NULL)
	{
		dwModuleHash = 0;
		pModuleBase = pDataTableEntry->DllBase;
		BaseDllName = pDataTableEntry->BaseDllName;
		pNTHeader = (pNt)((uint32_ptr)pModuleBase + ((PIMAGE_DOS_HEADER)pModuleBase)->e_lfanew);
		dwExportDirRVA = pNTHeader->OptionalHeader.DataDirectory[0].VirtualAddress;

		// Get the next loaded module entry
		pDataTableEntry = (PMY_LDR_DATA_TABLE_ENTRY)pDataTableEntry->InLoadOrderLinks.Flink;

		// If the current module does not export any functions, move on to the next module.
		if (dwExportDirRVA == 0)
		{
			continue;
		}


		for (i = 0; i < BaseDllName.MaximumLength; i++)
		{
			pTempChar = ((PCSTR)BaseDllName.Buffer + i);

			dwModuleHash = ROTR32(dwModuleHash, 13);

			if (*pTempChar >= 'a')
			{
				dwModuleHash += *pTempChar - 0x20;
			}
			else
			{
				dwModuleHash += *pTempChar;
			}
		}
		if (dwModuleHash != dwModuleHash_)
			continue;
		pExportDir = (PIMAGE_EXPORT_DIRECTORY)((uint32_ptr)pModuleBase + dwExportDirRVA);

		dwNumFunctions = pExportDir->NumberOfNames;
		pdwFunctionNameBase = (PDWORD)((PCHAR)pModuleBase + pExportDir->AddressOfNames);

		for (i = 0; i < dwNumFunctions; i++)
		{
			dwFunctionHash = 0;
			pFunctionName = (PCSTR)(*pdwFunctionNameBase + (uint32_ptr)pModuleBase);
			pdwFunctionNameBase++;

			pTempChar = pFunctionName;

			do
			{
				dwFunctionHash = ROTR32(dwFunctionHash, 13);
				dwFunctionHash += *pTempChar;
				pTempChar++;
			} while (*(pTempChar - 1) != 0);
			if (dwFunctionHash == dwFunctionHash_)
			{
				usOrdinalTableIndex = *(PUSHORT)(((uint32_ptr)pModuleBase + pExportDir->AddressOfNameOrdinals) + (2 * i));
				return (HMODULE)((uint32_ptr)pModuleBase + *(PDWORD)(((uint32_ptr)pModuleBase + pExportDir->AddressOfFunctions) + (4 * usOrdinalTableIndex)));
			}
		}
	}

	// All modules have been exhausted and the function was not found.
	return NULL;
}