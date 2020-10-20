SHELL		:= /bin/sh
INSTALL		?= install

PREFIX		?= /usr/local

TARGET		:= hyperfine


install: release
	$(INSTALL)    -d ${DESTDIR}/${PREFIX}/bin
	$(INSTALL) -s -t ${DESTDIR}/${PREFIX}/bin target/release/${TARGET}
	$(INSTALL)    -d ${DESTDIR}/${PREFIX}/man/man1
	$(INSTALL)    -t ${DESTDIR}/${PREFIX}/man/man1 -m 644 doc/${TARGET}.1
release:
	cargo build --release --locked


.PHONY: release install
