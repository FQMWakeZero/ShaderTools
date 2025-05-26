#!/bin/bash

# 检查是否传入了文件路径
if [ -z "$1" ]; then
    echo "Error: No file provided." >&2
    exit 1
fi

# 检查文件是否存在
if [ ! -f "$1" ]; then
    echo "Error: File '$1' does not exist." >&2
    exit 1
fi

# 使用 picgo 上传图片，并捕获输出
output=$(picgo upload "$1" 2>&1)

# 检查是否上传成功
if [ $? -eq 0 ]; then
    # 尝试从输出中提取 URL（假设 picgo 返回的格式包含 http:// 或 https://）
    url=$(echo "$output" | grep -o -E 'https?://[^[:space:]]+' | head -n 1)

    if [ -n "$url" ]; then
        echo "$url"  # 输出 URL，MarkText 会使用这个替换图片
        exit 0
    else
        echo "Error: PicGo uploaded successfully but no URL was found in output." >&2
        exit 1
    fi
else
    echo "Error: PicGo upload failed. Output: $output" >&2
    exit 1
fi