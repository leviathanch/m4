#!/bin/sh

# gentest/loops.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1534

. ${srcdir}/defs

cat <<\EOF >in
shift
shift(bar)
shift(foo, bar, baz)
EOF

cat <<\EOF >ok


bar,baz
EOF

$M4 -d in >out

$CMP -s out ok

