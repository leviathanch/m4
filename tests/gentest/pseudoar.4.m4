#!/bin/sh

# gentest/pseudoar.4.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1135

. ${srcdir}/defs

cat <<\EOF >in
define(`echo1', `$*')
define(`echo2', `$@')
define(`foo', `This is macro `foo'.')
echo1(foo)
echo2(foo)
EOF

cat <<\EOF >ok



This is macro This is macro foo..
This is macro foo.
EOF

$M4 -d in >out

$CMP -s out ok

