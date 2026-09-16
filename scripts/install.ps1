# Free Claude Code 一键安装脚本 (Windows PowerShell)
# 本脚本仅包装官方安装程序，方便中文用户使用

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "  Free Claude Code (FCC) 一键安装" -ForegroundColor Cyan
Write-Host "  原项目: https://github.com/Alishahryar1/free-claude-code" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "即将调用官方安装脚本..."
Write-Host "安装过程中请根据提示选择需要的 Coding Agent。"
Write-Host ""

& ([scriptblock]::Create((irm "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.ps1")))

Write-Host ""
Write-Host "==============================================" -ForegroundColor Green
Write-Host " 安装完成！" -ForegroundColor Green
Write-Host ""
Write-Host "启动方式："
Write-Host "  从开始菜单或桌面打开 Free Claude Code"
Write-Host ""
Write-Host "然后打开 Admin UI，配置 API Key 并选择模型。"
Write-Host "推荐先申请 NVIDIA NIM 免费 Key:"
Write-Host "  https://build.nvidia.com/settings/api-keys"
Write-Host "==============================================" -ForegroundColor Green
