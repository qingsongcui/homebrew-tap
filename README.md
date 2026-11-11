# Homebrew Tap for Senrelay · 续境 (ContextCore)

Official Homebrew Tap for **[Senrelay · 续境 (`ContextCore`)](https://senrelay.com/)** — a native macOS app, browser workbench, and local loopback service (`127.0.0.1`) for cross-Agent conversation relay (`/contextcore`), source-linked persistent project memory, and snapshot-guarded multi-host MCP, Skills, and provider configuration across Claude Code, Codex, Cursor, Antigravity, Oh My Pi (OMP), and OpenCode.

**Senrelay · 续境（[`qingsongcui/ContextCore`](https://github.com/qingsongcui/ContextCore)）** 官方 Homebrew Tap 仓库。提供原生 macOS 桌面应用一键安装支持。

- **Official Website (中文)**: [https://senrelay.com/](https://senrelay.com/)
- **Official Website (English)**: [https://senrelay.com/en/](https://senrelay.com/en/)
- **Setup Guide / 使用指南**: [中文指南](https://senrelay.com/guide.html) · [English Guide](https://senrelay.com/en/guide.html)
- **Source Repository**: [https://github.com/qingsongcui/ContextCore](https://github.com/qingsongcui/ContextCore)

---

## Install / 安装方式

### One-line install / 一行命令安装

```bash
brew install --cask qingsongcui/tap/senrelay
```

Or tap first, then install / 或先添加 Tap 源再安装：

```bash
brew tap qingsongcui/tap
brew install --cask senrelay
```

### First launch (Public Beta ad-hoc signing) / 首次启动说明

Current Public Beta builds (`v1.0.0-beta.1`, Apple Silicon `arm64`, macOS 14.0 Sonoma+) use local `ad-hoc` signing (not yet Apple notarized). Before launching `Senrelay.app` for the first time, clear the macOS download quarantine attribute:

当前公开测试版（`v1.0.0-beta.1`，支持 Apple Silicon `arm64` · macOS 14.0+）采用本地 `ad-hoc` 签名（尚未接入 Apple 公证）。首次打开前请在终端执行以下命令清除下载隔离属性（或在「系统设置 → 隐私与安全性 → 仍要打开」中放行）：

```bash
xattr -cr /Applications/Senrelay.app
```

> **Note on PyPI naming / 包名防误装提示**: The local `contextcore` CLI ships bundled inside `Senrelay.app` and the [`qingsongcui/ContextCore`](https://github.com/qingsongcui/ContextCore) source repository. Do **not** run `pip install contextcore` — the `contextcore` package on PyPI belongs to an unrelated third-party project.

---

## Upgrade & Uninstall / 更新与卸载

```bash
# Upgrade / 升级
brew upgrade --cask qingsongcui/tap/senrelay

# Uninstall app bundle only (keeps local SQLite data) / 仅卸载应用本体（保留本机数据）
brew uninstall --cask senrelay
```

## License / 许可证

MIT License — see [`qingsongcui/ContextCore`](https://github.com/qingsongcui/ContextCore/blob/main/LICENSE).
