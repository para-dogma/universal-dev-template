# 🚀 Universal Dev Template v1.2.0

> **The autonomous engineering platform for Python, Rust, Go & Tact.**
> Designed for AI-native collaboration, zero-touch automation, and senior-level code quality.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Tests](https://img.shields.io/badge/tests-passing-green)](tests/test_scripts.sh)
[![Python](https://img.shields.io/badge/Python-3.10+-blue.svg)](https://www.python.org/)
[![Rust](https://img.shields.io/badge/Rust-1.70+-orange.svg)](https://www.rust-lang.org/)
[![Go](https://img.shields.io/badge/Go-1.20+-cyan.svg)](https://go.dev/)
[![Tact](https://img.shields.io/badge/Tact-1.4+-purple.svg)](https://tact-lang.org/)
---

## 🎯 Why This Template?

Most boilerplates are just file collections. This is an **engineering operating system** that:
- 🤖 **Collaborates with AI** via Zero-Touch Context Loader (no manual copy-paste).
- 🛡️ **Protects your code** with automated secret scanning and health checks.
- 📊 **Visualizes architecture** with Mermaid diagrams and live status dashboards.
- 🔍 **Self-diagnoses** infrastructure issues before you start coding.
- 📦 **Exports offline skill packs** for team onboarding or local AI models.
---

## ⚡ Quick Start

### 1. Diagnose Infrastructure
Before writing code, ensure everything is healthy:
```bash
./scripts/diagnose.sh
```
*Expected output: "Infrastructure is HEALTHY. Ready to code!"*

### 2. Initialize AI Context
Get full project context for Qwen/Claude/Cursor in one command:
```bash
./scripts/ai-context-loader.sh
```
*Paste the output into your AI chat. No manual status updates needed.*
---

## 🧠 AI-Native Features

| Feature | Description |
| :--- | :--- |
| **Zero-Touch Context** | Auto-collects instructions, status, architecture & commits for AI |
| **AI Instructions** | `.ai-instructions.md` defines coding standards and workflow |
| **Auto-Status Updates** | Git hooks update `PROJECT_STATUS.md` after every commit |
| **Offline Skill Pack** | Export entire project context for local AI or team sharing |
---

## 🛠️ Core Scripts

| Script | Purpose |
| :--- | :--- |
| `diagnose.sh` | Self-check infrastructure health (hooks, files, permissions) |
| `validate.sh` | Run linters, tests, and security checks |
| `update_status.sh` | Auto-generate project dashboard from git history |
| `ai-context-loader.sh` | Bundle context for AI assistants |
| `export-skill-pack.sh` | Create portable archive of project knowledge |
| `welcome.sh` | Interactive onboarding for new developers |
---

## 📁 Project Structure

```text
.
├── scripts/            # Automation engine
│   ├── diagnose.sh     # Infrastructure health check
│   ├── validate.sh     # Code quality gate
│   └── ai-context-loader.sh # AI context bundler
├── docs/               # Knowledge base
│   └── architecture.md # Visual system maps (Mermaid)
├── examples/           # Language-specific starters
│   ├── python-simple/  # Minimal Pydantic example
│   └── <other langs>/  # Rust, Go, Tact setups
├── .githooks/          # Automated discipline
│   ├── pre-commit      # Secret scanner
│   └── post-commit     # Auto-status updater
├── .ai-instructions.md # AI collaboration rules
├── PROJECT_STATUS.md   # Live project dashboard
└── TEMPLATE_VERSION    # Current template version (1.2.0)
```
---

##  Security & Safety
- **Pre-commit Secret Scanner:** Blocks commits with passwords/API keys
- **Conventional Commits:** Enforced via hooks for clean history
- **Branch Protection:** CI/CD gates prevent broken merges
- **MIT License:** Safe for commercial and open-source use

## 🗺️ Implementation Roadmap
| Phase | Milestone | Status | Key Deliverables |
| :--- | :--- | :--- | :--- |
| **1. Foundation** | Template Setup | ✅ Done | Repo structure, CI/CD, AI Context Loader |
| **2. Core Logic** | Business Features | ⏳ Active | Smart contracts, API, DB schema |
| **3. Validation** | Testing & Audit | ⏳ Planned | Unit tests, Security audit, Load testing |
| **4. Deployment** | Release to Prod | ⏳ Planned | Docker/K8s, Monitoring, Documentation |
| **5. Growth** | Scaling & Opt | ⏳ Planned | Performance tuning, New features |
---

## ❓ Why Not Cookiecutter?



Cookiecutter — отличный инструмент для генерации проектов, но он решает другую задачу.



| Feature | Cookiecutter | Universal Dev Template |

| :--- | :--- | :--- |

| **Цель** | Создать структуру проекта | Управлять жизненным циклом разработки |

| **AI-интеграция** | Отсутствует | Zero-Touch Context Loader + AI Instructions |

| **Самодиагностика** | Нет | `diagnose.sh` проверяет здоровье инфраструктуры |

| **Авто-статус** | Нет | Git hooks обновляют PROJECT_STATUS.md |

| **Безопасность** | Ручная настройка | Pre-commit secret scanner из коробки |

| **Экспорт знаний** | Нет | Offline Skill Pack для команды или локального AI |

| **Версионирование** | Шаблоны устаревают | TEMPLATE_VERSION + механизм проверки актуальности |



**Вывод:** Cookiecutter создает проект. Universal Dev Template делает его *живым, безопасным и AI-ready*.


## 🎥 Live Demo



No video needed! Run the interactive terminal demo to see the template in action:



```bash

./scripts/demo.sh

```



This script demonstrates:

- Infrastructure self-diagnosis (`diagnose.sh`)

- Zero-Touch AI Context loading

- Python FastAPI example structure



## 🔍 Keywords & Tags
`template` `boilerplate` `starter` `devops` `ci-cd` `python` `rust` `go` `tact` `ton-blockchain` `automation` `engineering-standard` `ai-ready` `mermaid` `ml-validation` `smart-contract` `rwa` `zero-touch`

## 🤝 Contributing
1. Run `./scripts/diagnose.sh` to ensure your environment is healthy
2. Follow Conventional Commits for all changes
3. Update `PROJECT_STATUS.md` via `./scripts/update_status.sh`
4. Add tests for new features
5. Submit PR with clear description and linked issue

## 📜 License
MIT © 2026 para-dogma. See [LICENSE](LICENSE) for details.
---

##  Platform Support
- **Linux/macOS:** Full support via Bash scripts
- **Windows:** Native PowerShell support via `scripts/diagnose.ps1`
- **WSL2:** Recommended for full Bash compatibility
