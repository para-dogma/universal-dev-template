#!/bin/bash
STATUS_FILE="PROJECT_STATUS.md"
echo "Updating status based on file system..."

# Проверяем наличие артефактов
HAS_ARCH=false; [ -f "docs/architecture.md" ] && HAS_ARCH=true
HAS_CONTRACTS=false; [ -d "contracts" ] && HAS_CONTRACTS=true

cat > $STATUS_FILE << MARKDOWN
# 📊 Project Status (Auto-Generated)
> ⚠️ Do not edit manually. Run \`./scripts/update_status.sh\`.

## Current Stage: Initialization
- [x] Repository Created
- [$(if [ "$HAS_ARCH" = true ]; then echo "x"; else echo " "; fi)] Interactive Architecture Map
- [$(if [ "$HAS_CONTRACTS" = true ]; then echo "x"; else echo " "; fi)] Contracts Directory Initialized
- [ ] Core Logic Implemented
- [ ] Tests Passing

### Last Check: $(date '+%Y-%m-%d %H:%M:%S UTC')
MARKDOWN
echo "✅ Status updated!"
