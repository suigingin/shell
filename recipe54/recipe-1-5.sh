#!/bin/bash

# 標準エラー出力を捨てる
rm nonexistent_file.txt 2>/dev/null

# 標準エラー出力先を標準出力先にコピーする
rm nonexistent_file.txt 2>&1

# 標準出力と標準エラー出力両方を捨てる
cat nonexistent_file.txt >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "error occur...!"
fi
