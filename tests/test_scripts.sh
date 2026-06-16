#!/bin/bash
echo "🧪 Running script validation tests..."
PASS=0
FAIL=0

# Test 1: diagnose.sh exit code
./scripts/diagnose.sh > /dev/null 2>&1
if [ $? -eq 0 ]; then echo "✅ diagnose.sh passed"; PASS=$((PASS+1)); else echo "❌ diagnose.sh failed"; FAIL=$((FAIL+1)); fi

# Test 2: ai-context-loader.sh output check
OUTPUT=$(./scripts/ai-context-loader.sh 2>/dev/null)
if echo "$OUTPUT" | grep -q "AI Context\|Instructions\|Status"; then 
    echo "✅ ai-context-loader.sh produces valid context"
    PASS=$((PASS+1))
else 
    echo "❌ ai-context-loader.sh output invalid"
    FAIL=$((FAIL+1))
fi

# Test 3: demo.sh executability
if [ -x "./scripts/demo.sh" ]; then echo "✅ demo.sh is executable"; PASS=$((PASS+1)); else echo "❌ demo.sh not executable"; FAIL=$((FAIL+1)); fi

echo ""
echo "📊 Results: $PASS/$((PASS+FAIL)) passed"
if [ $FAIL -gt 0 ]; then exit 1; fi
