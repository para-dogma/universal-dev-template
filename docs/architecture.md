# Architecture Overview

## Project Structure
- scripts/ - Automation scripts
- examples/ - Working examples
- tests/ - Unit tests
- docs/ - Documentation

## Core Components

### AI Integration
- .ai-instructions.md - AI coding guidelines
- ai-context-loader.sh - Context generator
- update_status.sh - Auto-update project status

### Validation
- validate.sh - Project health checks
- diagnose.sh - Infrastructure diagnostics

## Data Flow
1. User runs ai-context-loader.sh
2. Script collects instructions, status, architecture, git history
3. Output formatted for AI assistants
4. AI generates code following guidelines
5. validate.sh ensures quality

## Technology Stack
- Backend: FastAPI (Python 3.10+)
- Validation: Pydantic v2
- Testing: Jest + Python unittest
- Blockchain: Tact (TON)
