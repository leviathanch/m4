#!/bin/sh

# gentest/include.3.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2489

. ${srcdir}/defs

cat <<\EOF >in
define(`bar', include(`incl.m4'))
This is `bar':  >>>bar<<<
EOF

cat <<\EOF >ok

This is bar:  >>>Include file start
foo
Include file end
<<<
EOF

M4PATH=$srcdir $M4 -d in >out

$CMP -s out ok

