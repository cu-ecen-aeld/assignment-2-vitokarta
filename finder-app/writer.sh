#!/bin/bash

# 赋值参数
writefile=$1
writestr=$2

# 检查参数是否提供
if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "用法: $0 [文件完整路径] [写入的字符串]"
    exit 1
fi

# 创建文件路径
mkdir -p "$(dirname "$writefile")"

# 将字符串写入文件
echo "$writestr" > "$writefile"

# 检查文件是否成功创建
if [ ! -f "$writefile" ]; then
    echo "错误：无法创建文件"
    exit 1
fi

