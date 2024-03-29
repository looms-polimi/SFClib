
#include <map>
#include <limits>
#include <cmath>
#include <cassert>
#include <iostream>

#include "semaphore.h"

using namespace std;

static map<int,double> semaphores;
static int handles=0;

int new_semaphore()
{
    int result = handles++;
    semaphores[result] = numeric_limits<double>::min();
    cout << "new_semaphore() : " << result << endl;
    return result;
}

double get_semaphore(int handle, double time, double phase, double period)
{
    auto it=semaphores.find(handle);
    assert(it!=semaphores.end());
    //Is this a new event?
    if(time>it->second) it->second = ceil((time-phase)/period)*period+phase;
    cout << "get_semaphore(" << handle << ", " << time << ", " << phase << ", "
         << period << ") : " << it->second << endl;
    return it->second;
}
