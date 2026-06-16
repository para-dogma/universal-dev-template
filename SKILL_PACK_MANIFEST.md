# 🧠 Offline AI Skill Pack Manifest

This repository contains a portable "Senior Engineer Skill Set" that can be used offline or transferred to any AI agent.

## 📦 What's Inside?

| File / Folder | Skill Type | Description |
| :--- | :--- | :--- |
| `.ai-instructions.md` | **Core Personality** | Defines the AI's role, tone, and strict engineering standards. |
| `scripts/validate.sh` | **Quality Assurance Skill** | The logic for checking code health. Can be run locally or by AI. |
| `docs/architecture.md` | **System Memory** | Visual maps of how the project is structured. |
| `PROJECT_STATUS.md` | **State Awareness** | Real-time snapshot of what is done and what is pending. |
| `.githooks/` | **Discipline Enforcer** | Automated rules that prevent bad habits (like messy commits). |
| `examples/` | **Polyglot Knowledge** | Pre-configured setups for Python, Rust, Go, Tact. |

## 🚀 How to Use Offline

1.  **For Humans:** Clone this repo. Run `./scripts/validate.sh` to start working with established standards.
2.  **For Local AI (e.g., LM Studio, Ollama):**
    -   Point your AI's "System Prompt" or "Context Window" to `.ai-instructions.md`.
    -   Feed it `PROJECT_STATUS.md` and `docs/architecture.md` as initial context.
    -   The AI will now "know" your project structure and standards without internet access.

## 🔄 Updating the Skill Pack

Run `./scripts/update_status.sh` before archiving to ensure the "State Awareness" skill is fresh.
