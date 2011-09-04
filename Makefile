FYTHE=fythe
PREFIX=/usr
INCLUDE_PATH=`$(FYTHE) --include-path`

# Nothing to build
all:

clean:

install:
	install -D fytheplof $(PREFIX)/bin/fytheplof
	install -D -m 0644 plof/plof_g.plof $(INCLUDE_PATH)/plof/plof_g.plof
