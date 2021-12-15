#pragma once

#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

int new_semaphore();
double get_semaphore(int handle, double time, double phase, double period);
double query_semaphore(int handle);

int register_boolean_variable(const char* name);
int register_integer_variable(const char* name);
int register_real_variable(const char* name);

bool get_boolean_variable(int handle);
int get_integer_variable(int handle);
double get_real_variable(int handle);

void set_boolean_variable(int handle, bool value);
void set_integer_variable(int handle, int value);
void set_real_variable(int handle, double value);

#ifdef __cplusplus
}
#endif
