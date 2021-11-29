
#pragma once

#ifdef __cplusplus
extern "C" {
#endif

int new_semaphore();
double get_semaphore(int handle, double time, double phase, double period);

#ifdef __cplusplus
}
#endif
