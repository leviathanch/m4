#!/bin/sh

# gentest/defn.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1230

. ${srcdir}/defs

cat <<\EOF >in
define(`zap', defn(`undefine'))
zap(`undefine')
undefine(`zap')
EOF

cat <<\EOF >ok


undefine(zap)
EOF

$M4 -d in >out

$CMP -s out ok

