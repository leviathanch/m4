#!/bin/sh

# gentest/pseudoar.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1100

. ${srcdir}/defs

cat <<\EOF >in
define(`nargs', `$#')
nargs
nargs()
nargs(arg1, arg2, arg3)
EOF

cat <<\EOF >ok

0
1
3
EOF

$M4 -d in >out

$CMP -s out ok

