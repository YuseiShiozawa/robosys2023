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
[ "${out}" = "合計:15, 平均:3.0"$'\n'"うんこ占い:ミニうんこ" ] || [ "${out}" = "合計:15, 平均:3.0"$'\n'"うんこ占い:うんこ" ] || [ "${out}" = "合計:15, 平均:3.0"$'\n'"うんこ占い:MEGAうんこ" ] || ng $LINENO 

out=$(echo 1 2 3 4  | tr ' ' '\n' | ./plus)
[ "${out}" = "合計:10, 平均:2.5"$'\n'"うんこ占い:ミニうんこ" ] || [ "${out}" = "合計:10, 平均:2.5"$'\n'"うんこ占い:うんこ" ] || [ "${out}" = "合計:10, 平均:2.5"$'\n'"うんこ占い:MEGAうんこ" ] || ng $LINENO

out=$(seq 5 10 | ./plus)
[ "${out}" = "合計:45, 平均:7.5"$'\n'"うんこ占い:ミニうんこ" ] || [ "${out}" = "合計:45, 平均:7.5"$'\n'"うんこ占い:うんこ" ] || [ "${out}" = "合計:45, 平均:7.5"$'\n'"うんこ占い:MEGAうんこ" ] || ng $LINENO

out=$(seq 1 2 5 | ./plus)
[ "${out}" = "合計:9, 平均:3.0"$'\n'"うんこ占い:ミニうんこ" ] || [ "${out}" = "合計:9, 平均:3.0"$'\n'"うんこ占い:うんこ" ] || [ "${out}" = "合計:9, 平均:3.0"$'\n'"うんこ占い:MEGAうんこ" ] || ng $LINENO

out=$(seq 10 -2 1 | ./plus)
[ "${out}" = "合計:30, 平均:6.0"$'\n'"うんこ占い:ミニうんこ" ] || [ "${out}" = "合計:30, 平均:6.0"$'\n'"うんこ占い:うんこ" ] || [ "${out}" = "合計:30, 平均:6.0"$'\n'"うんこ占い:MEGAうんこ" ] || ng $LINENO

out=$(seq 1 0.1 2 | ./plus)
[ "${out}" = "合計:16.5, 平均:1.5"$'\n'"うんこ占い:ミニうんこ" ] || [ "${out}" = "合計:16.5, 平均:1.5"$'\n'"うんこ占い:うんこ" ] || [ "${out}" = "合計:16.5, 平均:1.5"$'\n'"うんこ占い:MEGAうんこ" ] || ng $LINENO

out=$(seq -1 0.1 1 | ./plus)
[ "${out}" = "合計:0.0, 平均:0.0"$'\n'"うんこ占い:ミニうんこ" ] || [ "${out}" = "合計:0.0, 平均:0.0"$'\n'"うんこ占い:うんこ" ] || [ "${out}" = "合計:0.0, 平均:0.0"$'\n'"うんこ占い:MEGAうんこ" ] || ng $LINENO

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

out=$(echo  | ./plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

out=$(echo unko | ./plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

out=$(echo seq 5 | ./plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

out=$(echo % | ./plus)
[ "$?" = 1 ] || ng $LINENO
[ "${out}" = "" ] || ng $LINENO

[ "$res" = 0 ] && echo OK

exit $res


