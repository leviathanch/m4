#!/bin/sh

# gentest/format.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 3035

. ${srcdir}/defs

cat <<\EOF >in
define(`foo', `The brown fox jumped over the lazy dog')
format(`The string "%s" is %d characters long', foo, len(foo))
EOF

cat <<\EOF >ok

The string "The brown fox jumped over the lazy dog" is 38 characters long
EOF

$M4 -d in >out

$CMP -s out ok

