#!/bin/sh

# gentest/patsubst.2.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 3000

. ${srcdir}/defs

cat <<\EOF >in
define(`upcase', `translit(`$*', `a-z', `A-Z')')dnl
define(`downcase', `translit(`$*', `A-Z', `a-z')')dnl
define(`capitalize1',
     `regexp(`$1', `^\(\w\)\(\w*\)', `upcase(`\1')`'downcase(`\2')')')dnl
define(`capitalize',
     `patsubst(`$1', `\w+', `capitalize1(`\&')')')dnl
capitalize(`GNUs not Unix')
EOF

cat <<\EOF >ok
Gnus Not Unix
EOF

$M4 -d in >out

$CMP -s out ok

