#!/usr/bin/make -f
# Makefile for LiveCut #
# ---------------------------- #
# Created by falkTX
#

include dpf/Makefile.base.mk

all: plugins

# --------------------------------------------------------------

plugins:
	$(MAKE) all -C ./plugins/LiveCut

# --------------------------------------------------------------

install:
	install -d $(DESTDIR)$(PREFIX)/lib/lv2/
	cp -rL bin/*.lv2  $(DESTDIR)$(PREFIX)/lib/lv2/

# --------------------------------------------------------------
.PHONY: plugins