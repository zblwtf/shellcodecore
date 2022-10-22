#pragma once
#include "core_def.h"
typedef struct logstream
{
public:
	logstream(msvc& _msvc, const char* log_path);
	~logstream();
	unsigned long write(const void* source, unsigned long size, unsigned long nmemb);
	void flush();
	logstream& operator <<(int number);
	logstream& operator <<(const char* cstr);
	const unsigned int& position;
	enum { stream_length = 1024 };
private:
	char string_buf[stream_length + 1];
	void* hand_file;
	msvc& ref_msvc;
	unsigned int position_;
}logstream;