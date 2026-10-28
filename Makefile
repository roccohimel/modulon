CC ?= cc
CFLAGS ?= -std=c11 -Wall -Wextra -Wno-unused-parameter

SOURCES := $(wildcard src/*.c)
OBJECTS := $(patsubst src/%.c,build/%.o,$(SOURCES))
DEPS := $(OBJECTS:.o=.d)

.PHONY: all clean

all: bin/mlonc

bin/mlonc: $(OBJECTS) | bin
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(LDLIBS) -ldl

build/%.o: src/%.c | build
	$(CC) $(CPPFLAGS) -Iinclude $(CFLAGS) -MMD -MP -c $< -o $@

build bin:
	mkdir -p $@

clean:
	$(RM) -r build
	$(RM) bin/mlonc

-include $(DEPS)
