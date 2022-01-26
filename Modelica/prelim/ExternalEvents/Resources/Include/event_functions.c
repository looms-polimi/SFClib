#include<stdio.h>
#include<stdlib.h>
#include<assert.h>
#include<string.h>

#define MAX_EVENT_SOURCES 1000

typedef struct
{
  int id;
  char name[80];
} event_source_data;


event_source_data ids[MAX_EVENT_SOURCES];
int cur_reg=0;

int register_me(char* iname)
{
  assert(cur_reg<MAX_EVENT_SOURCES);
  ids[cur_reg].id = cur_reg;
  strncpy(ids[cur_reg].name,iname,80);
  ids[cur_reg].name[79]=0;
  return cur_reg++;
}

double mrand(void)
{
  return (double)rand()/RAND_MAX;
}


void event_handler(int caller_id, float t)
{
  printf("Called by ID %02d at time=%f\n",caller_id,t);
}
