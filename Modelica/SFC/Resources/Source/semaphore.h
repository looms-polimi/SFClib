#pragma once

#ifdef __cplusplus
extern "C" {
#endif

int new_semaphore();
double get_semaphore(int handle, double time, double phase, double period);
double query_semaphore(int handle);

int register_real(const char* val_name, double value);
//int register_bool(const char* val_name, bool value);
int set_real(const char* val_name, double value);
//int set_bool(const char* val_name, bool value);

#ifdef __cplusplus
}
#endif
