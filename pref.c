#include <stdlib.h>
#include <stdio.h>

// Pref 
#include <linux/perf_event.h>    /* Definition of PERF_* constants */
#include <linux/hw_breakpoint.h> /* Definition of HW_* constants */
#include <sys/syscall.h>         /* Definition of SYS_* constants */
#include <unistd.h>
#include <sys/ioctl.h>

// Branching
#include <fcntl.h>           /* For O_* constants */
#include <sys/stat.h>        /* For mode constants */
#include <semaphore.h>


void measurement() 
{
    int a =3+3;
    a*=4;
}

#define SNAME "/mysem"

int main()
{
    struct perf_event_attr pe = {0};

    pe.type = PERF_TYPE_HARDWARE;
    pe.size = sizeof(struct perf_event_attr);
    pe.config = PERF_COUNT_HW_INSTRUCTIONS;
    pe.exclude_kernel = 1;

    int fd = syscall(__NR_perf_event_open, &pe, 0, -1, -1, 0);
    ioctl(fd, PERF_EVENT_IOC_RESET, 0);
    ioctl(fd, PERF_EVENT_IOC_ENABLE, 0);

    measurement();

    ioctl(fd, PERF_EVENT_IOC_DISABLE, 0);
    long int count;
    read(fd, &count, sizeof(long long));
    
    printf("Used %lld instructions\n", count);
    
    close(fd);
    return 0;
}
