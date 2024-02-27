#ifndef EVENT_H
#define EVENT_H
#include "wire.h"

struct Event
{
    uint64_t time;
    Wire* wire;
    char state;
};

typedef struct EventLess {
        bool operator()(const Event* v1, const Event* v2){
            return v1->time < v2->time;
        }
} EventLess;
	
#endif
