#!/bin/bash

# 🔧 AUTO-FIX: Чиним права если сломаны
chmod +x scripts/*.sh 2>/dev/null

# Показываем справку если нет аргумента
if [ -z "$1" ]; then
    echo "🚀 Universal Dev Template"
    echo ""
    echo "Использование: ./scripts/start.sh <команда>"
    echo ""
    echo "Команды:"
    echo "  diagnose   - Проверить проект"
    echo "  ai         - Получить контекст для AI"
    echo "  validate   - Проверить код"
    echo "  test       - Запустить тесты"
    echo "  fix        - Авто-исправить проблемы"
    echo ""
    echo "Пример: ./scripts/start.sh diagnose"
    exit 0
fi

# Выполняем команду
case "$1" in
    diagnose)
        echo "🔍 Running diagnostics..."
        ./scripts/diagnose.sh
        ;;
    ai)
        echo "🤖 Loading AI context..."
        ./scripts/ai-context-loader.sh
        ;;
    validate)
        echo "✅ Validating..."
        ./scripts/validate.sh
        ;;
    test)
        echo "🧪 Running tests..."
        python3 tests/test_app.py
        ;;
    fix)
        echo "🔧 Auto-fixing..."
        chmod +x scripts/*.sh
        touch .ai-instructions.md PROJECT_STATUS.md 2>/dev/null
        mkdir -p docs
        [ -f "docs/architecture.md" ] || echo "# Architecture" > docs/architecture.md
        echo "✅ Fixed!"
        ./scripts/validate.sh
        ;;
    *)
        echo " Unknown command: $1"
        echo "Run ./scripts/start.sh for help"
        exit 1
        ;;
esac
