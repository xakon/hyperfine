SHELL		:= /bin/sh
INSTALL		?= install

PREFIX		?= /usr/local

TARGET		:= hyperfine


install: release
	$(INSTALL)    -d ${DESTDIR}/${PREFIX}/bin
	$(INSTALL) -s -t ${DESTDIR}/${PREFIX}/bin target/release/${TARGET}
release:
	cargo build --release --locked


.PHONY: release install
