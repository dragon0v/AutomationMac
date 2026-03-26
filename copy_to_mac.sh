#!/bin/bash

# 1. 定义路径
# 获取脚本所在的当前目录（假设你的 .workflow 文件就在 Git 仓库根目录或特定子目录）
SRC_DIR="$(pwd)" 
DEST_DIR="$HOME/Library/Services"

echo "开始同步 Automator 脚本..."

# 2. 检查源目录是否存在 .workflow 文件
if ls "$SRC_DIR"/*.workflow >/dev/null 2>&1; then
    
    # 3. 执行复制
    # -R: 递归复制（因为 .workflow 是个文件夹）
    # -v: 显示复制过程
    # -f: 强制覆盖旧版本
    cp -Rv "$SRC_DIR"/*.workflow "$DEST_DIR/"
    
    echo "---------------------------------------"
    echo "✅ 同步完成！"
    echo "现在你可以在访达的‘快速操作’菜单中看到它们了。"
else
    echo "❌ 错误：在当前目录 $SRC_DIR 中未找到 .workflow 文件。"
    exit 1
fi
