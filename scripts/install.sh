#!/bin/bash
# Free Claude Code 一键安装 (macOS / Linux)

set -e

echo "=============================================="
echo "  Free Claude Code (FCC) 一键安装"
echo "=============================================="
echo ""
echo "安装过程中请根据提示选择需要的 Coding Agent。"
echo ""

curl -fsSL "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.sh" | sh

echo ""
echo "=============================================="
echo " 安装完成"
echo ""
echo "启动："
echo "  Linux:  fcc-server"
echo "  macOS:  打开 Applications 中的 Free Claude Code"
echo ""
echo "随后在 Admin UI 配置 API Key 与模型。"
echo "NVIDIA NIM Key: https://build.nvidia.com/settings/api-keys"
echo "=============================================="
