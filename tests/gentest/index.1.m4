#!/bin/sh

# gentest/index.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 2821

. ${srcdir}/defs

cat <<\EOF >in
index(`gnus, gnats, and armadillos', `nat')
index(`gnus, gnats, and armadillos', `dag')
EOF

cat <<\EOF >ok
7
-1
EOF

$M4 -d in >out

$CMP -s out ok

