#!/bin/sh

# gentest/ifdef.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1440

. ${srcdir}/defs

cat <<\EOF >in
ifdef(`foo', ``foo' is defined', ``foo' is not defined')
define(`foo', `')
ifdef(`foo', ``foo' is defined', ``foo' is not defined')
EOF

cat <<\EOF >ok
foo is not defined

foo is defined
EOF

$M4 -d in >out

$CMP -s out ok

