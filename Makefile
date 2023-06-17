CC     ?= cc
PREFIX ?= /usr/local

CP      = cp -r
RM      = rm -r
MKDIR   = mkdir -p
DIRNAME = dirname

INCLUDE_DIRS = sse2neon


install:
	$(MKDIR) $(PREFIX)/include
	$(foreach c, $(INCLUDE_DIRS), $(CP) deps/$(c) $(PREFIX)/include/;)

uninstall:
	$(foreach d, $(INCLUDE_DIRS), $(RM) $(PREFIX)/include/$(d);)
