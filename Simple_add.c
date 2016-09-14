#inlcude <linux/kernel.h>
#include <linux/linkage.h>

askmlinkage int* sys_call(int x, int y){
	printk(KERN_NOTICE "%d", x);
	printk(KERN_NOTICE "%d", y);
	
	int* result = x + y;
	printk(KERN_NOTICE "*%d", result);
	
	return result;
}