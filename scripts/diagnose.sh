#!/bin/bash
echo "🔍 Diagnosing and auto-fixing..."

# Авто-создание missing файлов
for file in .ai-instructions.md PROJECT_STATUS.md; do
    if [ ! -f "$file" ]; then
        echo "⚠️  $file missing - creating..."
        touch "$file"
    fi
done

if [ ! -f "docs/architecture.md" ]; then
    echo "⚠️  docs/architecture.md missing - creating..."
    mkdir -p docs
    echo "# Architecture" > docs/architecture.md
fi

# Авто-чинка прав
find scripts -name "*.sh" -exec chmod +x {} \; 2>/dev/null

echo "✅ Auto-fix complete!"
./scripts/validate.sh
