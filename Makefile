#
# Makefile
# breno, 2020-10-21 15:16
#

.PHONY: install

DIR:=$(XDG_HOME_CONFIG)/ctags
ifeq ($(XDG_HOME_CONFIG),)
	DIR:=$(HOME)/.config/ctags
endif

install: | $(DIR)
	cp vimhelp.ctags $|/vimhelp.ctags

$(DIR):
	mkdir -p $@

