#!/bin/sh

# gentest/argument.3.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1066

. ${srcdir}/defs

cat <<\EOF >in
define(`test', ``Macro name: $0'')
test
EOF

cat <<\EOF >ok

Macro name: test
EOF

$M4 -d in >out

$CMP -s out ok

