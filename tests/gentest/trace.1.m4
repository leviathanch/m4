#!/bin/sh

# gentest/trace.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1705

. ${srcdir}/defs

cat <<\EOF >in
define(`foo', `Hello World.')
define(`echo', `$@')
traceon(`foo', `echo')
foo
echo(gnus, and gnats)
EOF

cat <<\EOF >ok



Hello World.
gnus,and gnats
EOF

cat <<\EOF >okerr
m4trace: -1- foo -> `Hello World.'
m4trace: -1- echo(`gnus', `and gnats') -> ``gnus',`and gnats''
EOF

$M4 -d in >out 2>err
sed -e "s, ../../src/m4:, m4:," err >sederr && mv sederr err

$CMP -s out ok && $CMP -s err okerr

