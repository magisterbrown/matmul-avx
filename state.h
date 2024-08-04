#define SIDA 20
#define SIDB 25
#define COMMON 8

#include <stdint.h>
#define PERFS 5

struct read_format {
uint64_t nr;
struct {
    long int value;
} values[PERFS]; };

struct state {
    float  mata[SIDA][COMMON];
    float  matb[COMMON][SIDB];
    float  matc[SIDA][SIDB];
    struct read_format rf;
    double time;
};
