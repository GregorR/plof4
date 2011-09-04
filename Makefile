FYTHE=fythe
PREFIX=/usr
INCLUDE_PATH=`$(FYTHE) --include-path`

# Nothing to build
all:

clean:

install:
	install -D fytheplof $(PREFIX)/bin/fytheplof
	cd $(PREFIX)/bin && \
	    rm -f plof && \
	    (ln -s fytheplof plof || cp fytheplof plof)
	install -D -m 0644 plof/plof_g.plof $(INCLUDE_PATH)/plof/plof_g.plof
