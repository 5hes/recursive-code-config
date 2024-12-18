#!/bin/bash

echo "Patching ..."

# 创建输出目录，如果不存在的话
mkdir -p patched

# 遍历当前目录下的所有文件
for file in *; do
    case "$file" in
        *.ttf)  # 检查文件扩展名
            echo "Patching $file ..."
            ./font-patcher -c "$file" -o patched  # 执行打补丁命令
            ;;
        *)  # 其他文件类型
            echo "Skipping $file ..."
            ;;
    esac
done

echo "Patching completed."
