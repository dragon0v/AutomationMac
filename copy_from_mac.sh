#!/bin/bash

SRC_DIR="$HOME/Library/Services"
DEST_DIR="$(pwd)"

echo "正在导出所有自定义 Workflow 到当前目录..."

# 查找所有 .workflow 文件夹并复制
find "$SRC_DIR" -name "*.workflow" -maxdepth 1 -exec cp -Rp {} "$DEST_DIR/" \;

echo "✅ 导出完成。"
