#!/usr/bin/make -f
# Makefile for LiveCut #
# ---------------------------- #
# Created by falkTX
#

# --------------------------------------------------------------
# Project name, used for binaries

NAME = LiveCut

# --------------------------------------------------------------
# Files to build

FILES_DSP = \
	LiveCut.cpp \
	lib/BBCutter.cpp \
	lib/BitCrusher.cpp \
	lib/Comb.cpp \
	lib/DelayLine.cpp \
	lib/FirstOrderLowpass.cpp

# --------------------------------------------------------------
# Do some magic

include ../../dpf/Makefile.plugins.mk

# --------------------------------------------------------------
# only lv2 dsp

all: lv2_dsp

# --------------------------------------------------------------
