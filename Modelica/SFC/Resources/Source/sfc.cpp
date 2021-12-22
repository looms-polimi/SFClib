/*
 * Copyright 2021 Federico Terraneo, Chiara Cimino, Alberto Leva
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#include <map>
#include <limits>
#include <cmath>
#include <cassert>
#include <iostream>

#include <string>
#include <variant>
#include "sfc.h"

using namespace std;

// Class for action management

class Action
{
protected:

    int active_N_phases;
    int active_R_phases;
    bool on;

public:

    Action()
    {
        active_N_phases = 0;
        active_R_phases = 0;
    }

    bool on_phase_activation(int qualifier)
    {
        if(qualifier==QUALIFIER_N) active_N_phases++;
        if(qualifier==QUALIFIER_R) active_R_phases++;
        on = active_R_phases==0 &&       // no (prevailing) reset active, and
             (active_N_phases>0 ||       // either at least one N phase active
              qualifier==QUALIFIER_S);   // or the qualifier is set
        return on;
    }

    bool on_phase_deactivation(int qualifier)
    {
        if(qualifier==QUALIFIER_N) active_N_phases--;
        assert(active_N_phases>=0);
        if(qualifier==QUALIFIER_R) active_R_phases--;
        assert(active_R_phases==0);
        on = active_R_phases<=0 &&       // no (prevailing) reset active, and
             active_N_phases>0;          // at least one N phase active
        return on;
    }

};

// Var for actions

static map<string,int> action_symbol_table;
static map<int,Action> action_list;
static int action_last_handle;

int register_action(const char *name)
{
    auto it=action_symbol_table.find(name);
    int handle;
    if(it==action_symbol_table.end())
    {   
        handle = action_last_handle++;
        action_symbol_table[name] = handle;
        action_list[handle] = Action();
    } else {
        handle = it->second;
    }
    return handle;
}

bool on_phase_activation(int handle, int qualifier)
{
    return action_list[handle].on_phase_activation(qualifier);
}

bool on_phase_deactivation(int handle, int qualifier)
{
    return action_list[handle].on_phase_deactivation(qualifier);
}


// Var for debug
int debug_level = 1;

// Var for aligned events
static map<int,double> events;                        // handle, next_event_time
static int event_last_handle=0;

// Var for variables
static map<string,int> var_symbol_table;              // name, handle 
static map<int,variant<bool, int, double>> var_list;  // handle, value
static int var_last_handle=0; 

// Functions for debug

void set_debug_level(int level)
{
    debug_level = level;
}

// Functions for actions






// Functions for aligned events

int new_aligned_event()
{
    int result = event_last_handle++;
    events[result] = numeric_limits<double>::min();
    if(debug_level>0) cout << "new_aligned_event() : " << result << endl;
    return result;
}

double schedule_next_aligned_event(int handle, double time, double phase, double period)
{
    auto it=events.find(handle);
    assert(it!=events.end());
    // Is this a new event?
    if(time>it->second) it->second = ceil((time-phase)/period)*period+phase;
    if(debug_level>0) cout << "schedule_next_aligned_event(" << handle << ", " << time << ", " << phase << ", "
         << period << ") : " << it->second << endl;
    return it->second;
}

double get_next_aligned_event(int handle)
{
    auto it=events.find(handle);
    assert(it!=events.end());
    if(debug_level>0) cout << "get_next_aligned_event(" << handle << ") : " << it->second << endl;
    return it->second;
}

// Functions for variables

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
T get_type_by_name(const char *name)
{
    auto itn = var_symbol_table.find(name);
    assert(itn != var_symbol_table.end());
    auto ith = var_list.find(itn->second);
    assert(ith != var_list.end());
    assert(holds_alternative<T>(ith->second));
    return get<T>(ith->second);
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
    if(debug_level>0) cout << "register_boolean_variable(" << name << ") : " << handle << endl;
    return handle;
}

int register_integer_variable(const char* name)
{
    int handle = register_type<int>(name);
    if(debug_level>0) cout << "register_integer_variable(" << name << ") : " << handle << endl;
    return handle;
}

int register_real_variable(const char* name)
{
    int handle = register_type<double>(name);
    if(debug_level>0) cout << "register_real_variable(" << name << ") : " << handle << endl;
    return handle;
}

bool get_boolean_variable(int handle)
{
    auto value = get_type<bool>(handle);
    if(debug_level>0) cout << "get_boolean_variable(" << handle << ") : " << value << endl;
    return value;
}

int get_integer_variable(int handle)
{
    auto value = get_type<int>(handle);
    if(debug_level>0) cout << "get_integer_variable(" << handle << ") : " << value << endl;
    return value;
}

double get_real_variable(int handle)
{
    auto value = get_type<double>(handle);
    if(debug_level>0) cout << "get_real_variable(" << handle << ") : " << value << endl;
    return value;
}

void set_boolean_variable(int handle, bool value)
{
    if(debug_level>0) cout << "set_boolean_variable(" << handle << ", " << value << ")" << endl;
    set_type<bool>(handle,value);
}

void set_integer_variable(int handle, int value)
{
    if(debug_level>0) cout << "set_integer_variable(" << handle << ", " << value << ")" << endl;
    set_type<int>(handle,value);
}

void set_real_variable(int handle, double value)
{
    if(debug_level>0) cout << "set_real_variable(" << handle << ", " << value << ")" << endl;
    set_type<double>(handle,value);
}
