#!/bin/sh

# gentest/patsubst.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2983

. ${srcdir}/defs

cat <<\EOF >in
patsubst(`GNUs not Unix', `^', `OBS: ')
patsubst(`GNUs not Unix', `\<', `OBS: ')
patsubst(`GNUs not Unix', `\w*', `(\&)')
patsubst(`GNUs not Unix', `\w+', `(\&)')
patsubst(`GNUs not Unix', `[A-Z][a-z]+')
EOF

cat <<\EOF >ok
OBS: GNUs not Unix
OBS: GNUs OBS: not OBS: Unix
(GNUs)() (not)() (Unix)
(GNUs) (not) (Unix)
GN not 
EOF

$M4 -d in >out

$CMP -s out ok

