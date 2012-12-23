#ifndef __RECTTY_H__
#define __RECTTY_H__

#include "sys/time.h"

typedef struct header {
    struct timeval tv;
    int len;
} Header;


#endif
