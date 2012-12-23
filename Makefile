rectty: rectty.c libvterm/.libs/libvterm.a
	libtool --mode=link gcc -g -O -Ilibvterm/include -o rectty rectty.c libvterm/libvterm.la

libvterm/.libs/libvterm.a:
	cd libvterm && make

clean:
	cd libvterm && make clean
	rm -f rectty
