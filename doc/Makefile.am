## Makefile.am - template for generating Makefile via Automake
##
## Copyright (C) 2006-2014, 2016-2017 Free Software Foundation, Inc.
##
## This file is part of GNU M4.
##
## GNU M4 is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## GNU M4 is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.
##
## This file written by Eric Blake <ebb9@byu.net>

info_TEXINFOS = m4.texi
m4_TEXINFOS = fdl-1.3.texi gpl-3.0.texi
man_MANS = $(srcdir)/m4.1
EXTRA_DIST = $(man_MANS) gendocs_template
MAINTAINERCLEANFILES = $(man_MANS) gendocs_template
SUFFIXES = .1
HELP2MAN = $(SHELL) $(top_srcdir)/build-aux/missing --run help2man

# Depend on ../.version for version, m4.c for usage text.  Do not depend on
# built m4 executable, since not everyone has help2man or perl.
# Build the man page once in the srcdir, rather than in every VPATH build
# dir, to match how automake builds info pages.  This is safe for 'make
# distcheck' since it is distributed pre-built.
$(srcdir)/m4.1: $(top_srcdir)/.version $(top_srcdir)/src/m4.c
	@if test -x ../src/m4$(EXEEXT) ; then \
	  echo "Updating man page m4.1" ; \
	  $(HELP2MAN) --name="macro processor" --source='$(PACKAGE_STRING)' \
	    --info-page=m4 --output=$@ ../src/m4$(EXEEXT) ; \
	else \
	  echo "WARNING: The \`man' page \`$@' cannot be updated yet."; \
	  echo "         Retry once the program executable is ready."; \
	fi
