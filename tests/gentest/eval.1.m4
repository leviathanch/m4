#!/bin/sh

# gentest/eval.1.m4 is part of the GNU m4 testsuite
# generated from example in ../doc/m4.texinfo line 3199

. ${srcdir}/defs

cat <<\EOF >in
eval(-3 * 5)
eval(index(`Hello world', `llo') >= 0)
define(`square', `eval(($1)**2)')
square(9)
square(square(5)+1)
define(`foo', `666')
eval(`foo'/6)
eval(foo/6)
EOF

cat <<\EOF >ok
-15
1

81
676


111
EOF

cat <<\EOF >okerr
in:7: m4: Bad expression in eval: foo/6
EOF

$M4 -d in >out 2>err
sed -e "s, ../../src/m4:, m4:," err >sederr && mv sederr err

$CMP -s out ok && $CMP -s err okerr

