#!/bin/sh

# gentest/changesy.6.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2223

. ${srcdir}/defs

cat <<\EOF >in
changesyntax(`({<', `)}>', `,;:', `O(,)')
eval{2**4-1; 2 : 8>
EOF

cat <<\EOF >ok

00001111
EOF

$M4 -d in >out

$CMP -s out ok

