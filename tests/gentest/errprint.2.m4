#!/bin/sh

# gentest/errprint.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 3451

. ${srcdir}/defs

cat <<\EOF >in
errprint(`m4:'__file__:__line__: `Input error
')
EOF

cat <<\EOF >ok

EOF

cat <<\EOF >okerr
m4:in:1: Input error
EOF

$M4 -d in >out 2>err
sed -e "s, ../../src/m4:, m4:," err >sederr && mv sederr err

$CMP -s out ok && $CMP -s err okerr

