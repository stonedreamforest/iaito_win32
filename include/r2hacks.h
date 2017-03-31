#ifndef R2HACKS_H
#define R2HACKS_H

#if _MSC_VER && !__INTEL_COMPILER

//Prevents errors with Ws2tcpip.h
#define _WS2TCPIP_H_

//Prevent incompatible named variadic macro error
#include "types.h"

//Prevent incompatible named variadic macro error
#ifndef HAVE_EPRINTF
#define eprintf(x,...) fprintf(stderr,x,__VA_ARGS__)
#define eprint(x) fprintf(stderr,"%s\n",x)
#define HAVE_EPRINTF 1
#endif //HAVE_EPRINTF

//Prevent compile errors
#define snprintf _snprintf
#define __attribute__(x) __declspec(dllimport)

#endif //_MSC_VER

#endif //R2HACKS_H
