#!/usr/bin/make

#PREFIX?=/tmp
#PREFIX?=/tmp

made: configured	
	pwd
	$(CC) nompi_hello.c -o nompi_hello -dynamic

configured:
	pwd
	echo "PREFIX=$(PREFIX)"
	touch configured

install: nompi_hello
	pwd
	mkdir -p $(PREFIX)/bin
	cp nompi_hello $(PREFIX)/bin

clean:
	rm -rfv configured made installed nompi_hello check.mpi *.error *.output *.cobaltlog

check: nompi_hello install
#	pwd
	$(PREFIX)/bin/nompi_hello
	

