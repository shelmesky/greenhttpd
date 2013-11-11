#!/bin/bash
cc -c servlet.c
cc -c http.c -D_EVENT_HAVE_STRUCT_IN6_ADDR -D_EVENT_HAVE_SA_FAMILY_T -D_EVENT_HAVE_STRUCT_SOCKADDR_IN6 -D_EVENT_H -D_EVENT_HAVE_STRUCT_SOCKADDR_STORAGE:
gcc http.o servlet.o -o httpd -levent
