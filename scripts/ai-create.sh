#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./scripts/ai-create.sh \"Create a user login endpoint\""
    exit 1
fi

echo "🤖 Generating: $1"
echo ""

# Получаем контекст и отправляем AI
./scripts/ai-context-loader.sh > /tmp/ai_context.txt

echo "📋 Context loaded. Copy this to AI assistant:"
echo "============================================"
cat /tmp/ai_context.txt
echo ""
echo "============================================"
echo "Your request: $1"
echo ""
echo "Now paste to AI (Qwen/Claude/Cursor) and save result to app.py"
echo "Then run: ./scripts/validate.sh"
