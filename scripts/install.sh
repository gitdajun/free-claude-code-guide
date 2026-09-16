#!/bin/bash
# Free Claude Code 一键安装脚本 (macOS / Linux)
# 本脚本仅包装官方安装程序，方便中文用户使用

set -e

echo "=============================================="
echo "  Free Claude Code (FCC) 一键安装"
echo "  原项目: https://github.com/Alishahryar1/free-claude-code"
echo "=============================================="
echo ""
echo "即将调用官方安装脚本..."
echo "安装过程中请根据提示选择需要的 Coding Agent。"
echo ""

curl -fsSL "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.sh" | sh

echo ""
echo "=============================================="
echo " 安装完成！"
echo ""
echo "启动方式："
echo "  Linux:  运行 fcc-server"
echo "  macOS:  打开 Applications 中的 Free Claude Code"
echo ""
echo "然后打开 Admin UI，配置 API Key 并选择模型。"
echo "推荐先申请 NVIDIA NIM 免费 Key:"
echo "  https://build.nvidia.com/settings/api-keys"
echo "=============================================="
