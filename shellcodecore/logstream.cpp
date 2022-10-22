#include "logstream.h"
logstream::logstream(msvc& _msvc, const char* log_path) :ref_msvc(_msvc), position_(0), position(position_)
{
	this->ref_msvc.memset(this->string_buf, 0, stream_length);
	char str_format[] = { 'w','b',0 };
	this->hand_file = this->ref_msvc.fopen(log_path, str_format);
}
logstream::~logstream()
{
	this->flush();
	this->ref_msvc.fclose(this->hand_file);
}
logstream& logstream::operator<<(int number)
{
	char buffer[256];
	this->ref_msvc.memset(buffer, 0, sizeof(buffer));
	char str_format[] = { '%','d',0 };
	this->ref_msvc.sprintf(buffer, str_format, number);
	unsigned long len_str = this->ref_msvc.strlen(buffer);
	this->write(buffer, 1, len_str);
	return *this;
}
logstream& logstream::operator<<(const char* cstr)
{
	
	unsigned long len_str = this->ref_msvc.strlen(cstr);
	this->write(cstr, 1, len_str);
	return *this;
}
unsigned long logstream::write(const void* source, unsigned long size, unsigned long nmemb)
{
	unsigned long size_remaining = stream_length - position;
	unsigned long number_needwrite = size * nmemb;
	unsigned long number_writed = 0;
	unsigned long uiValueA = 0;
	while (true)
	{
		if (size_remaining >= number_needwrite)
		{
			this->ref_msvc.memcpy(this->string_buf + position, source, number_needwrite);
			/*this->ref_msvc.fwrite(this->string_buf, 1, number_needwrite, hand_file);*/
			uiValueA = number_needwrite;
			number_writed += uiValueA;
			number_needwrite -= uiValueA;
			position_ += uiValueA;
			break;
		}
		else
		{
			this->ref_msvc.memcpy(this->string_buf + position, source, size_remaining);
			this->ref_msvc.fwrite(this->string_buf, 1, stream_length, hand_file);
			uiValueA = size_remaining;
			this->ref_msvc.memset(this->string_buf, 0, stream_length);
			number_needwrite -= uiValueA;
			number_writed += uiValueA;
			position_ = 0;
		}
	}
	return number_writed;
}
void logstream::flush()
{
	this->ref_msvc.fwrite(this->string_buf, 1, position + 1, hand_file);
	this->ref_msvc.fflush(hand_file);
	this->ref_msvc.memset(this->string_buf, 0, stream_length);
	position_ = 0;
}