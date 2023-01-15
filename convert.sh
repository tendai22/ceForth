#! /bin/sh

cat xx.md |
sed '
:top
    /^............................................................../{
    :loop
    N
    /\n$/b end
    b loop
:end
    s/\n/ /g
    s/$/\
/
    p
    d
}'