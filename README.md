# Free Claude Code (FCC) 中文使用指南

本仓库整理了 [Free Claude Code](https://github.com/Alishahryar1/free-claude-code) 的中文安装与使用教程，并提供一键安装脚本。

FCC 是一个开源工具，让你用免费/低成本模型（NVIDIA NIM、OpenRouter、Groq 等）来运行多种 Coding Agent（Claude Code、Codex、Pi、OpenCode、Cline 等），支持终端、浏览器、IDE、手机。

> 原项目地址：https://github.com/Alishahryar1/free-claude-code  
> 本仓库仅为中文整理，与原作者无关。

---

## 一、一键安装（推荐）

### macOS / Linux

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/gitdajun/free-claude-code-guide/main/scripts/install.sh)
```

### Windows（PowerShell）

```powershell
& ([scriptblock]::Create((irm "https://raw.githubusercontent.com/gitdajun/free-claude-code-guide/main/scripts/install.ps1")))
```

安装时会提示选择 Coding Agent（至少选一个），可选是否安装 RTK。

重新运行以上命令即可更新。

> 也可以直接使用官方原版命令：  
> macOS/Linux: `curl -fsSL "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.sh" | sh`  
> Windows: `& ([scriptblock]::Create((irm "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.ps1")))`

---

## 二、启动 FCC

| 系统 | 启动方式 |
|------|----------|
| Windows | 开始菜单或桌面打开 **Free Claude Code** |
| macOS | Applications 或桌面打开 **Free Claude Code** |
| Linux | 终端运行 `fcc-server`（保持终端不要关闭） |

启动后会自动打开 **Admin UI**（浏览器管理页面）。  
Windows / macOS 可通过托盘图标打开 Admin、重启或退出。

---

## 三、配置模型（推荐从 NVIDIA NIM 开始）

1. 前往 [NVIDIA API Keys](https://build.nvidia.com/settings/api-keys) 申请免费 API Key
2. 打开 Admin UI
3. 将 Key 填入 `NVIDIA_NIM_API_KEY`
4. `MODEL` 保持默认 `nvidia_nim/nvidia/nemotron-3-super-120b-a12b`（或自行搜索选择）
5. 点击 **Apply**

可选开启 **Proxy Authentication** 保护本地代理。

### 其他常用免费/低成本 Provider

| Provider | Admin 设置项 | 示例 MODEL |
|----------|--------------|------------|
| NVIDIA NIM | `NVIDIA_NIM_API_KEY` | `nvidia_nim/nvidia/nemotron-3-super-120b-a12b` |
| OpenRouter | `OPENROUTER_API_KEY` | `open_router/openrouter/free` |
| Groq | `GROQ_API_KEY` | `groq/llama-3.3-70b-versatile` |
| DeepSeek | `DEEPSEEK_API_KEY` | `deepseek/deepseek-chat` |
| xAI (Grok) | `XAI_API_KEY` | `xai/grok-4.5` |
| Google AI Studio | `GEMINI_API_KEY` | `gemini/models/gemini-3.1-flash-lite` |
| Ollama（本地） | `OLLAMA_BASE_URL` | `ollama/<model-tag>` |

完整列表见原项目 README。

可在 **Model Config** 中设置 Fallback Models（按顺序自动切换）。

---

## 四、运行 Coding Agent

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

启动后在对应 Agent 的模型选择器中选择 FCC 提供的模型即可。

---

## 五、编辑器集成（可选）

### Claude Code in VS Code

1. 安装 [Claude Code 扩展](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code)
2. 打开 VS Code 用户设置（JSON），添加：

```json
"claudeCode.disableLoginPrompt": true,
"claudeCode.environmentVariables": [
  { "name": "ANTHROPIC_BASE_URL", "value": "http://localhost:8082" },
  { "name": "ANTHROPIC_AUTH_TOKEN", "value": "freecc" },
  { "name": "CLAUDE_CODE_ENABLE_GATEWAY_MODEL_DISCOVERY", "value": "1" },
  { "name": "CLAUDE_CODE_AUTO_COMPACT_WINDOW", "value": "190000" },
  { "name": "DISABLE_AUTOUPDATER", "value": "1" },
  { "name": "DISABLE_FEEDBACK_COMMAND", "value": "1" }
]
```

端口和 Token 请与 Admin UI 保持一致。

### Codex in VS Code / Codex App

编辑 `~/.codex/config.toml`（Windows 为 `%USERPROFILE%\.codex\config.toml`）：

```toml
model_provider = "fcc"
model = "nvidia_nim/nvidia/nemotron-3-super-120b-a12b"

[model_providers.fcc]
name = "Free Claude Code"
base_url = "http://127.0.0.1:8082/v1"
wire_api = "responses"

[model_providers.fcc.auth]
command = "fcc-codex"
args = ["--print-proxy-auth-token"]
```

修改后重启对应应用。

---

## 六、语音输入（可选）

重新运行官方安装命令并加上参数：

**macOS / Linux：**
```bash
# NVIDIA NIM 语音
curl -fsSL "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.sh" | sh -s -- --voice-nim

# 本地 Whisper
curl -fsSL "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.sh" | sh -s -- --voice-local
```

**Windows PowerShell：**
```powershell
& ([scriptblock]::Create((irm "https://raw.githubusercontent.com/Alishahryar1/free-claude-code/main/scripts/install.ps1"))) -VoiceNim
# 或 -VoiceLocal / -VoiceAll
```

重启 `fcc-server` 后，在 Admin UI → Messaging → Voice 中启用并选择后端。

---

## 七、常用管理命令

```bash
fcc-server --version   # 查看版本
```

更新：重新执行一键安装命令即可。

---

## 仓库结构

```
├── README.md
├── LICENSE
└── scripts/
    ├── install.sh      # macOS / Linux 一键安装
    └── install.ps1     # Windows 一键安装
```

---

## 注意事项

- FCC 是独立开源项目，与 Anthropic 无关。
- 免费额度由各 Provider 控制，可能随时变化。
- 请遵守各 Provider 的服务条款。
- 本仓库仅做中文整理与一键脚本包装，不提供任何 API Key 或代理服务。

---

## 参考链接

- 原项目：https://github.com/Alishahryar1/free-claude-code
- NVIDIA API Key：https://build.nvidia.com/settings/api-keys
- OpenRouter：https://openrouter.ai/keys
