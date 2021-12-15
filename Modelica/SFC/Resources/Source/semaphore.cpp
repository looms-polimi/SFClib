
#include <map>
#include <limits>
#include <cmath>
#include <cassert>
#include <iostream>

#include <string>
#include <variant>
#include "semaphore.h"

using namespace std;

static map<int,double> semaphores;
static int handles=0;

// Var for Actions 
static map<string,int> var_symbol_table;
static map<int,variant<bool, int, double>> var_list;
static int var_last_handle=0; 

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
    // Is this a new event?
    if(time>it->second) it->second = ceil((time-phase)/period)*period+phase;
 
    // Advance to next period if event on clock tick
    // if(it->second<=time) it->second = it->second+period;


    cout << "get_semaphore(" << handle << ", " << time << ", " << phase << ", "
         << period << ") : " << it->second << endl;
    return it->second;
}

double query_semaphore(int handle)
{
    auto it=semaphores.find(handle);
    assert(it!=semaphores.end());
    cout << "query_semaphore(" << handle << ") : " << it->second << endl;
    return it->second;
}

////////Functions for actions

template<typename T>
int register_type(const char *name)
{
    auto it=var_symbol_table.find(name);
    int handle;
    if(it==var_symbol_table.end())
    {
        handle = var_last_handle++;
        var_symbol_table[name] = handle;
        var_list[handle] = static_cast<T>(0);
    } else {
        handle = it->second;
        assert(holds_alternative<T>(var_list[handle]));
    }
    return handle;
}

template<typename T>
T get_type(int handle)
{
    auto it = var_list.find(handle);
    assert(it != var_list.end());
    assert(holds_alternative<T>(it->second));
    return get<T>(it->second);
}

template<typename T>
void set_type(int handle, T value)
{
    auto it = var_list.find(handle);
    assert(it != var_list.end());
    assert(holds_alternative<T>(it->second));
    it->second=value;
}

int register_boolean_variable(const char* name)
{
    int handle = register_type<bool>(name);
    cout << "register_boolean_variable(" << name << ") : " << handle << endl;
    return handle;
}

int register_integer_variable(const char* name)
{
    int handle = register_type<int>(name);
    cout << "register_integer_variable(" << name << ") : " << handle << endl;
    return handle;
}

int register_real_variable(const char* name)
{
    int handle = register_type<double>(name);
    cout << "register_real_variable(" << name << ") : " << handle << endl;
    return handle;
}

bool get_boolean_variable(int handle)
{
    auto value = get_type<bool>(handle);
    cout << "get_boolean_variable(" << handle << ") : " << value << endl;
    return value;
}

int get_integer_variable(int handle)
{
    auto value = get_type<int>(handle);
    cout << "get_integer_variable(" << handle << ") : " << value << endl;
    return value;
}

double get_real_variable(int handle)
{
    auto value = get_type<double>(handle);
    cout << "get_real_variable(" << handle << ") : " << value << endl;
    return value;
}

void set_boolean_variable(int handle, bool value)
{
    cout << "set_boolean_variable(" << handle << ", " << value << ")" << endl;
    set_type<bool>(handle,value);
}

void set_integer_variable(int handle, int value)
{
    cout << "set_integer_variable(" << handle << ", " << value << ")" << endl;
    set_type<int>(handle,value);
}

void set_real_variable(int handle, double value)
{
    cout << "set_real_variable(" << handle << ", " << value << ")" << endl;
    set_type<double>(handle,value);
}
