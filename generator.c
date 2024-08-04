#include "state.h"
#include <stdlib.h>
#include <time.h>

void rand_init(size_t a, size_t b ,float matrix[a][b], int max)
{
    for(int x=0;x<a;x++)
        for(int y=0;y<b;y++)
            matrix[x][y] = max*((float)rand())/RAND_MAX;
}
#include <assert.h>
#include <immintrin.h>
void matmul(size_t a, size_t common, size_t b, float mata[a][common], float matb[common][b], float res[a][b])
{
    assert(common%8==0);
    float *fin = aligned_alloc(32, sizeof(float)*8);
    for(int x=0;x<a;x++)
    {
        for(int y=0;y<b;y++)
        {
            res[x][y] = 0;
            for(int i=0;i<common;i+=8)
            {
                __m256 vea = _mm256_set_ps(mata[x][i], mata[x][i+1], mata[x][i+2], mata[x][i+3], mata[x][i+4], mata[x][i+5], mata[x][i+6], mata[x][i+7]);
                __m256 veb = _mm256_set_ps(matb[i][y], matb[i+1][y], matb[i+2][y], matb[i+3][y], matb[i+4][y], matb[i+5][y], matb[i+6][y], matb[i+7][y]);
                __m256 mults = _mm256_mul_ps(vea, veb);
                _mm256_store_ps(fin, mults);
                for(int j=0;j<8;j++)
                    res[x][y]+=fin[j];
            }
        }
    }
    free(fin);
}

#include <linux/perf_event.h>    /* Definition of PERF_* constants */
#include <linux/hw_breakpoint.h> /* Definition of HW_* constants */
#include <sys/syscall.h>         /* Definition of SYS_* constants */
#include <unistd.h>
#include <sys/ioctl.h>
#include <string.h>


struct state *init()
{
    struct state *curr = malloc(sizeof(struct state));
    rand_init(SIDA,COMMON, curr->mata, 6);
    rand_init(COMMON,SIDB, curr->matb, 3);
    memset(&curr->matc, 0, sizeof(curr->matc));

    struct perf_event_attr base = {
        .type = PERF_TYPE_HARDWARE,
        .size = sizeof(struct perf_event_attr),
        .read_format = PERF_FORMAT_GROUP,
        .exclude_kernel = 1
    };
    struct perf_event_attr perfs[PERFS];
    for(int i=0;i<PERFS;i++)
        memcpy(&perfs[i], &base, sizeof(struct perf_event_attr));

    perfs[0].config = PERF_COUNT_HW_INSTRUCTIONS;
    perfs[1].config = PERF_COUNT_HW_BRANCH_MISSES;
    perfs[2].config = PERF_COUNT_HW_BRANCH_INSTRUCTIONS;

    perfs[3].config = PERF_COUNT_HW_CACHE_REFERENCES;
    perfs[4].config = PERF_COUNT_HW_CACHE_MISSES;

    clock_t t = clock();
        matmul(SIDA, COMMON, SIDB, curr->mata, curr->matb, curr->matc);
    curr->time = ((double)(clock()-t)*1000)/(CLOCKS_PER_SEC);
    memset(&curr->matc, 0, sizeof(curr->matc));

    int fd = syscall(__NR_perf_event_open, &perfs[0], 0, -1, -1, 0);
    for(int i=1;i<PERFS;i++)
        syscall(__NR_perf_event_open, &perfs[i], 0, -1, fd, 0);

    ioctl(fd, PERF_EVENT_IOC_RESET, 0);
    ioctl(fd, PERF_EVENT_IOC_ENABLE, 0);

    matmul(SIDA, COMMON, SIDB, curr->mata, curr->matb, curr->matc);

    ioctl(fd, PERF_EVENT_IOC_DISABLE, 0);

    read(fd, &curr->rf, sizeof(curr->rf));

    return curr;
}
