#!/bin/sh

# gentest/changesy.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2141

. ${srcdir}/defs

cat <<\EOF >in
define(`test', `$#')
test(a, b, c)
changesyntax(`(<', `,|', `)>', `O(,)')
test(a, b, c)
test<a|b|c>
EOF

cat <<\EOF >ok

3

0(a, b, c)
3
EOF

$M4 -d in >out

$CMP -s out ok

