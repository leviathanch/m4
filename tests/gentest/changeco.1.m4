#!/bin/sh

# gentest/changeco.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 1959

. ${srcdir}/defs

cat <<\EOF >in
define(`comment', `COMMENT')
# A normal comment
changecom(`/*', `*/')
# Not a comment anymore
But: /* this is a comment now */ while this is not a comment
EOF

cat <<\EOF >ok

# A normal comment

# Not a COMMENT anymore
But: /* this is a comment now */ while this is not a COMMENT
EOF

$M4 -d in >out

$CMP -s out ok

