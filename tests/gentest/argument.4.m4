#!/bin/sh

# gentest/argument.4.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1076

. ${srcdir}/defs

cat <<\EOF >in
define(`foo', `This is macro `foo'.')
foo
EOF

cat <<\EOF >ok

This is macro foo.
EOF

$M4 -d in >out

$CMP -s out ok

