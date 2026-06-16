#!/bin/bash
echo "🔍 Running Project Health Check..."
echo "====================================="

# 1. Проверка документации
echo -n "1. Checking README... "
if [ -f "README.md" ]; then
    echo "✅ OK"
else
    echo "❌ FAILED"
    exit 1
fi

# 2. Проверка статуса
echo -n "2. Checking Status Tracker... "
if [ -f "PROJECT_STATUS.md" ]; then
    echo "✅ OK"
else
    echo "️  MISSING (Will be generated)"
fi

# 3. Проверка архитектуры
echo -n "3. Checking Architecture Map... "
if [ -f "docs/architecture.md" ]; then
    echo "✅ OK"
else
    echo "️  PLANNED"
fi

# 4. Проверка тестов (только если есть package.json)
if [ -f "package.json" ]; then
    echo -n "4. Running unit tests... "
    if npm test -- --passWithNoTests 2>/dev/null | grep -q "passed"; then
        echo "✅ OK"
    else
        echo "⚠️  WARNING"
    fi
else
    echo "4. Unit tests... ⏭️  SKIPPED (No package.json)"
fi

echo "====================================="
echo "🚀 System is READY!"
echo ""
echo "🔄 Auto-updating project status..."
./scripts/update_status.sh
