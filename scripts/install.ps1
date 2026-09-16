# Free Claude Code 一键安装 (Windows PowerShell)

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "  Free Claude Code (FCC) 一键安装" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "安装过程中请根据提示选择需要的 Coding Agent。"
Write-Host ""

& ([scriptblock]::Create((irm "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.ps1")))

Write-Host ""
Write-Host "==============================================" -ForegroundColor Green
Write-Host " 安装完成" -ForegroundColor Green
Write-Host ""
Write-Host "启动：从开始菜单或桌面打开 Free Claude Code"
Write-Host "随后在 Admin UI 配置 API Key 与模型。"
Write-Host "NVIDIA NIM Key: https://build.nvidia.com/settings/api-keys"
Write-Host "==============================================" -ForegroundColor Green
