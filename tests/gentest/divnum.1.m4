#!/bin/sh

# gentest/divnum.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2707

. ${srcdir}/defs

cat <<\EOF >in
Initial divnum
divert(1)
Diversion one: divnum
divert(2)
Diversion two: divnum
divert
EOF

cat <<\EOF >ok
Initial 0


Diversion one: 1

Diversion two: 2
EOF

$M4 -d in >out

$CMP -s out ok

