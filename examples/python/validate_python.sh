#!/bin/bash
echo " Checking Python Environment..."
if command -v python3 &>/dev/null; then
    echo "✅ Python3 found"
    if [ -f "requirements.txt" ]; then
        pip install -q -r requirements.txt
        echo "✅ Dependencies installed"
    fi
    if python3 -m pytest --co -q 2>/dev/null | grep -q "test"; then
        echo "✅ Tests discovered"
    else
        echo "⚠️  No tests found or pytest missing"
    fi
else
    echo "❌ Python3 not found"
fi
