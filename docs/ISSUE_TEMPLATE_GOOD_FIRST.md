---
name: Good First Issue
about: Perfect for new contributors
title: 'feat: Add PowerShell version of ai-context-loader.sh'
labels: good first issue, help wanted, windows
---

## Description
We have `scripts/ai-context-loader.sh` for Linux/macOS, but Windows users need a native PowerShell version (`ai-context-loader.ps1`).

## Requirements
- Create `scripts/ai-context-loader.ps1`
- It should output the same context structure as the bash version
- Update `README.md` to mention the PS version
- Add tests in `tests/test_scripts.ps1` (optional but appreciated)

## Why this matters
This completes our cross-platform support story and makes the template truly universal.
