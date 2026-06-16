#!/bin/bash
echo "🔍 Diagnosing Universal Dev Template Infrastructure..."
ERRORS=0

# Проверка Git
command -v git &>/dev/null && echo "✅ Git found" || { echo "❌ Git is required!"; exit 1; }

# Проверка Git Hooks
if [ -d ".githooks" ] && [ "$(git config core.hooksPath)" == ".githooks" ]; then
    echo "✅ Git hooks configured correctly"
else
    echo "️  Git hooks NOT configured! Run: git config core.hooksPath .githooks"
    ERRORS=$((ERRORS+1))
fi

# Проверка ключевых файлов контекста
for file in .ai-instructions.md PROJECT_STATUS.md docs/architecture.md; do
    if [ -f "$file" ]; then echo "✅ $file exists"; else echo "⚠️  $file missing"; fi
done

# Проверка исполняемости скриптов
for script in scripts/validate.sh scripts/update_status.sh scripts/ai-context-loader.sh; do
    if [ -x "$script" ]; then echo "✅ $script is executable"; else echo "❌ $script not executable!"; ERRORS=$((ERRORS+1)); fi
done

# Проверка Python
command -v python3 &>/dev/null && echo "✅ Python3 available" || echo "⚠️  Python3 missing"

echo ""
if [ $ERRORS -eq 0 ]; then echo "🎉 Infrastructure is HEALTHY. Ready to code!"; 
else echo "🛑 Found $ERRORS issues."; exit 1; fi
