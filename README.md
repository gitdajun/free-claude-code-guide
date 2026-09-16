# Free Claude Code 使用指南

本仓库提供 Free Claude Code（FCC）的安装与使用说明，以及一键安装脚本。  
FCC 可对接多种免费/低成本模型 Provider，在终端、浏览器、IDE 中运行 Claude Code、Codex、Pi、OpenCode、Cline 等 Coding Agent。

---

## 一、一键安装

### macOS / Linux

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/gitdajun/free-claude-code-guide/main/scripts/install.sh)
```

### Windows（PowerShell）

```powershell
& ([scriptblock]::Create((irm "https://raw.githubusercontent.com/gitdajun/free-claude-code-guide/main/scripts/install.ps1")))
```

安装时选择需要的 Coding Agent（至少一个），可选 RTK。  
再次执行同一命令即可更新。

---

## 二、启动

| 系统 | 方式 |
|------|------|
| Windows | 开始菜单或桌面打开 Free Claude Code |
| macOS | Applications 或桌面打开 Free Claude Code |
| Linux | 终端运行 `fcc-server`（保持窗口开启） |

启动后打开 Admin UI。Windows / macOS 可通过托盘图标管理。

---

## 三、配置模型

推荐从 NVIDIA NIM 开始：

1. 在 [NVIDIA API Keys](https://build.nvidia.com/settings/api-keys) 创建 Key
2. 打开 Admin UI，填入 `NVIDIA_NIM_API_KEY`
3. `MODEL` 可使用默认或自行选择
4. 点击 Apply

也可配置 OpenRouter、Groq、DeepSeek、xAI、Gemini、Ollama 等（在 Admin UI 中填写对应 Key 与 MODEL）。

可在 Model Config 中设置 Fallback Models，失败时自动切换。

---

## 四、运行 Agent

```bash
fcc-claude      # Claude Code
fcc-codex       # Codex
fcc-pi          # Pi
fcc-opencode    # OpenCode
fcc-cline       # Cline
fcc-hermes      # Hermes
fcc-dsh         # DeepSeek Harness
fcc-grok        # Grok Build
fcc-muse        # Muse Code
fcc-aider       # Aider
```

在各 Agent 的模型选择器中选用 FCC 提供的模型。

---

## 五、编辑器集成（可选）

### Claude Code + VS Code

安装 Claude Code 扩展后，在用户 settings.json 中增加环境变量，将 `ANTHROPIC_BASE_URL` 指向本地 FCC 代理（默认 `http://localhost:8082`），并设置对应 Auth Token。端口与 Token 需与 Admin UI 一致。

### Codex

编辑 `~/.codex/config.toml`，将 `model_provider` 配为本地 FCC 的 base_url 与认证命令（如 `fcc-codex --print-proxy-auth-token`），修改后重启应用。

---

## 六、语音（可选）

安装时使用官方安装器的 `--voice-nim` / `--voice-local` 等参数启用语音后端，重启后在 Admin UI → Messaging → Voice 中开启。

---

## 七、其他

```bash
fcc-server --version
```

更新：重新执行一键安装命令。

## 仓库结构

```
├── README.md
├── LICENSE
└── scripts/
    ├── install.sh
    └── install.ps1
```

## 说明

- 各 Provider 免费额度由其自行控制，可能变化
- 请遵守相关服务条款与当地法律
- 本仓库不提供 API Key 或代理服务

## License

MIT License
