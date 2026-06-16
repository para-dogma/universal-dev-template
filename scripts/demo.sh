#!/bin/bash
# Интерактивное демо Universal Dev Template v1.2.0

echo "=================================================="
echo "🚀  UNIVERSAL DEV TEMPLATE - LIVE DEMO"
echo "=================================================="
echo ""
echo "Этот скрипт покажет ключевые возможности шаблона."
echo "Нажимай Enter для продолжения..."
read

# 1. Диагностика
echo "--------------------------------------------------"
echo "1️⃣  SAMODIAGNOSTICS: Checking infrastructure..."
echo "--------------------------------------------------"
./scripts/diagnose.sh
echo ""
read

# 2. AI Context Loader
echo "--------------------------------------------------"
echo "2️⃣  ZERO-TOUCH CONTEXT: Loading for AI..."
echo "--------------------------------------------------"
echo "Running: ./scripts/ai-context-loader.sh"
echo "(Output truncated for demo)"
echo "---"
./scripts/ai-context-loader.sh | head -20
echo "..."
echo "---"
echo "✅ Full context ready for Qwen/Claude/Cursor!"
echo ""
read

# 3. Пример кода
echo "--------------------------------------------------"
echo "3️⃣  PYTHON EXAMPLE: FastAPI Health Check"
echo "--------------------------------------------------"
echo "File: examples/python-simple/api/main.py"
echo "---"
cat examples/python-simple/api/main.py
echo "---"
echo "✅ Run with: uvicorn main:app --reload"
echo ""
read

# 4. Финал
echo "=================================================="
echo "  DEMO COMPLETE!"
echo "=================================================="
echo ""
echo "Next steps:"
echo "1. Copy examples/ to your project root"
echo "2. Run ./scripts/welcome.sh for onboarding"
echo "3. Start coding with AI assistance!"
echo ""
echo "Template Version: $(cat TEMPLATE_VERSION 2>/dev/null || echo 'unknown')"
