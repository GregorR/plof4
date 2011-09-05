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
	install -D -m 0644 plof/base.fythe $(INCLUDE_PATH)/plof/base.fythe
	install -D -m 0644 plof/objects.fythe $(INCLUDE_PATH)/plof/objects.fythe
	install -D -m 0644 plof/plof.fythe $(INCLUDE_PATH)/plof/base.fythe
	install -D -m 0644 plof/ploftop.fythe $(INCLUDE_PATH)/plof/ploftop.fythe
