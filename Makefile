CC=gcc
CFLAGS=-Wall -Wextra -g

all:
	 $(CC) $(CFLAGS) shellish.c -o shellish

clean:
	rm -f shellish
