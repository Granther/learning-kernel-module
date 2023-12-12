CONFIG_MODULE_SIG=n

# Makefile for your kernel module

obj-m += hello-1.o
obj-m += hello-2.o
obj-m += hello-3.o

# Specify the directory containing additional headers
YOUR_INCLUDE_DIR := /lib/modules/6.2.0-36-generic/build/

# Specify your source file(s)

# Build rule
all:	
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

# Clean rule
clean:	
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

