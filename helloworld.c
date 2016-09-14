#include <unistd.h>
#include <sys/sycall.h>

int sc;
sc = syscall(sys_helloworld);
