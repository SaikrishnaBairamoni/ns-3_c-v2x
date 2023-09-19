# Makefile wrapper for waf

all:
	python3.6 -x waf

# free free to change this part to suit your requirements
clean:
	python3.6 -x waf clean

configure:
	python3.6 -x waf configure --enable-examples --enable-tests

build:
	python3.6 -x waf build

install:
	python3.6 -x waf install

clean:
	python3.6 -x waf clean

distclean:
	python3.6 -x waf distclean
