SRC = musicdl.c
OBJ = ${SRC:.c=.o}

all: musicdl

.c.o:
	${CC} -c ${CFLAGS} $<

musicdl: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f musicdl ${OBJ}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f musicdl ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwm

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/musicdl

test: all
	./musicdl
