#!/bin/sh

# gentest/ifelse.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1478

. ${srcdir}/defs

cat <<\EOF >in
ifelse(`foo', `bar', `true')
ifelse(`foo', `foo', `true')
ifelse(`foo', `bar', `true', `false')
ifelse(`foo', `foo', `true', `false')
EOF

cat <<\EOF >ok

true
false
true
EOF

$M4 -d in >out

$CMP -s out ok

