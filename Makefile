CC ?= cc
CFLAGS ?= -std=c11 -Wall -Wextra -Wno-unused-parameter

# configure writes config.mk; defaults allow building without configure.
prefix = /usr/local
exec_prefix = $(prefix)
bindir = $(exec_prefix)/bin
-include config.mk

INSTALL ?= install
SOURCES := $(wildcard src/*.c)
OBJECTS := $(patsubst src/%.c,build/%.o,$(SOURCES))
DEPS := $(OBJECTS:.o=.d)

.PHONY: all clean install uninstall

all: bin/mlonc

bin/mlonc: $(OBJECTS) | bin
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(LDLIBS) -ldl

build/%.o: src/%.c | build
	$(CC) $(CPPFLAGS) -Iinclude $(CFLAGS) -MMD -MP -c $< -o $@

build bin:
	mkdir -p $@

install: all
	$(INSTALL) -d "$(DESTDIR)$(bindir)"
	$(INSTALL) -m 755 bin/mlonc "$(DESTDIR)$(bindir)/mlonc"

uninstall:
	$(RM) "$(DESTDIR)$(bindir)/mlonc"

clean:
	$(RM) -r build
	$(RM) bin/mlonc

-include $(DEPS)
