#!/bin/bash
# Wait until PostgreSQL started and listens on port 5432.
until $(nc -z db 5432); do { printf '.'; sleep 1; }; done

# Start server.
/usr/bin/freeswitch -nonat -ncwait -u www-data -g www-data