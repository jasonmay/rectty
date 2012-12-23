LIBTOOL = libtool
CC = gcc
CFLAGS= -g -O
INCLUDE_DIRS = -Ilibvterm/include
EXECUTABLE=rectty

rectty: rectty.c libvterm/libvterm.la
	$(LIBTOOL) --mode=link $(CC) $(CFLAGS) $(INCLUDE_DIRS) -o $(EXECUTABLE) rectty.c libvterm/libvterm.la

libvterm/libvterm.la:
	cd libvterm && make

clean:
	cd libvterm && make clean
	rm -f rectty
