#!/bin/sh

# gentest/undivert.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2631

. ${srcdir}/defs

cat <<\EOF >in
divert(1)
This text is diverted.
divert
This text is not diverted.
undivert(1)
EOF

cat <<\EOF >ok

This text is not diverted.

This text is diverted.

EOF

$M4 -d in >out

$CMP -s out ok

