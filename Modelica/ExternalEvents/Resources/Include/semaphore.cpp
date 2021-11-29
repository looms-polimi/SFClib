
#include <map>
#include <iostream>
#include <limits>
#include <cmath>

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
    //Is this a new event?
    if(time>semaphores[handle])
        semaphores[handle] = ceil((time-phase)/period)*period+phase;
    cout << "get_semaphore(" << handle << "," << time << "," << phase << "," << period << ") : " << semaphores[handle] << endl;
    return semaphores[handle];
}
