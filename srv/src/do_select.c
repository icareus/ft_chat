
#include <stdlib.h>
#include "bircd.h"
#include <sys/time.h>

void	do_select(t_env *e)
{
	struct timeval tv;

	X(-1, gettimeofday(&tv, NULL), "gettimeofday");
	tv.tv_sec = 0;
	tv.tv_usec = 200;
	e->r = select(e->max + 1, &e->fd_read, &e->fd_write, NULL, &tv);
}
