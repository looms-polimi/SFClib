
#include <map>
#include <limits>
#include <cmath>
#include <cassert>
#include <iostream>

#include <string>
#include <boost/variant.hpp>
#include "semaphore.h"
using namespace std;

static map<int,double> semaphores;
static int handles=0;

// Var for Actions 
static map<string,boost::variant <int, double, bool>> var_list;
static int list_handle, var_set=0; 

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




////////Functions for actions

int register_var(string val_name, boost::variant <int, double, bool> value){
    int handle,dex;
    cout << "\nRequest to register " << val_name << " with value " << value << endl;
    dex = 0;
    handle = -1;
    for (auto pair : var_list) {
	if (pair.first == val_name) { // name exists, return its handle
	    handle = dex;
            cout << "--> " << val_name << " found at handle " << handle << endl;
            break; // FIXME check duplicates?
        }
        dex++;
    }
    if(handle==-1) { // new variable, create new handle and FIXME set value
        handle = list_handle++;
        var_list[val_name] = value;
        cout << "--> created handle " << handle << " for " << val_name << endl;
    	}
   cout << "*** var_list ----------------------------";
   dex = 0
   for(auto pair : var_list)
      cout << i << "\t" << var_list->first << "\t" << endl;

   cout << "-----------------------------------------";
   return handle;
}

int register_real(const char* val_name, double value){
  std::string str;
  str.assign(val_name);
  return register_var(str, value);
}

int register_bool(const char* val_name, bool value){
  std::string str;
  str.assign(val_name);
  return register_var(str, value);
}


int set_var(string val_name, boost::variant <int, double, bool> value){
    
    for (auto pair : var_list) {
	    if (pair.first == val_name) {
	      pair.second = value;
	      var_set++;
	    }
	    cout << "var " << pair.first << " : " << pair.second << endl;
    }
    return var_set; 
}

int set_bool(const char* val_name, bool value){
  std::string str;
  str.assign(val_name);
  return set_var(str, value);
}

int set_real(const char* val_name, double value){
  std::string str;
  str.assign(val_name);
  return set_var(str, value);
}
 

double query_semaphore(int handle)
{
    auto it=semaphores.find(handle);
    assert(it!=semaphores.end());
    cout << "query_semaphore(" << handle << ") : " << it->second << endl;
    return it->second;
}

