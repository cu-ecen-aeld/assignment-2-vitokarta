#!/bin/bash

if [ $# -ne 2 ]; then
    echo "用法: $0 [文件目录路径] [搜索字符串]"
    exit 1
fi

filedir=$1
searchstr=$2

if [ ! -d "$filedir" ]; then
	echo "NO match dirctory"
	exit 1
else 
	x=$(find "$filedir" -type f | wc -l)
        y=$(grep -r "$searchstr" "$filedir" | wc -l)	
	echo "The number of files are $x and the number of matching lines are $y"
fi
