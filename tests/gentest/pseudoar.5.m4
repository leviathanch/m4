#!/bin/sh

# gentest/pseudoar.5.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1155

. ${srcdir}/defs

cat <<\EOF >in
define(`foo', `$$$ hello $$$')
foo
EOF

cat <<\EOF >ok

$$$ hello $$$
EOF

$M4 -d in >out

$CMP -s out ok

