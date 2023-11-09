#!/bin/bash 
#SPDX-FileCopyrightText: 2023 Yusei Shiozawa
#SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at line $1
	res=1
}

res=0

### I/O test ###
out=$(seq 5 | ./plus)
[ "${out}" = "合計:15, 平均:3.0"$'\n'"aaa" ] || ng $LINENO 
out=$(seq -5 | ./plus)
[ "${out}" = "エラー" ] || ng $LINEO

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

out=$(echo  | ./plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "" ] || ng $LINENO



[ "$res" = 0 ] && echo OK

exit $res


