#!/bin/bash -xv

ng () {
	echo NG at line $1
	res=1
}

res=0

### I/O test ###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng $LINENO

[ "$res" = 0 ] && echo OK

exit $res
