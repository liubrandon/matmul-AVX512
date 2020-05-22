#include <time.h>

// Returns current monotonic time in seconds
double getTime(void) {
    struct timespec tv;
    clock_gettime(CLOCK_MONOTONIC, &tv);
    return tv.tv_sec + (tv.tv_nsec / 1e+9); // nanoseconds to seconds conversion
}

// Takes in a time value produced from getTime()
// and returns # of microseconds (μs) since then
double timeSince(double time) {
    return ((getTime()-time) * 1e+6); // seconds to microseconds conversion
}