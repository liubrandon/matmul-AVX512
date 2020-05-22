#ifndef TIMER_HPP
#define TIMER_HPP

// Returns current monotonic time in seconds
double getTime(void);

// Takes in a time value produced from getTime()
// and returns # of microseconds (μs) since then
double timeSince(double time);

#endif