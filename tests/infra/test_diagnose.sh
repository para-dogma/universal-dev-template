#!/bin/bash
# Тесты для scripts/diagnose.sh

echo "🧪 Running infrastructure tests..."
PASS=0
FAIL=0

# Тест 1: diagnose.sh должен возвращать 0 при здоровой системе
./scripts/diagnose.sh > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "✅ Test 1 PASSED: diagnose.sh returns 0 on healthy system"
    PASS=$((PASS+1))
else
    echo "❌ Test 1 FAILED: diagnose.sh returned non-zero exit code"
    FAIL=$((FAIL+1))
fi

# Тест 2: validate.sh должен быть исполняемым
if [ -x "./scripts/validate.sh" ]; then
    echo "✅ Test 2 PASSED: validate.sh is executable"
    PASS=$((PASS+1))
else
    echo "❌ Test 2 FAILED: validate.sh is not executable"
    FAIL=$((FAIL+1))
fi

# Тест 3: .ai-instructions.md должен существовать
if [ -f ".ai-instructions.md" ]; then
    echo "✅ Test 3 PASSED: .ai-instructions.md exists"
    PASS=$((PASS+1))
else
    echo " Test 3 FAILED: .ai-instructions.md missing"
    FAIL=$((FAIL+1))
fi

# Тест 4: TEMPLATE_VERSION должен содержать версию
if grep -q "TEMPLATE_VERSION=" TEMPLATE_VERSION 2>/dev/null; then
    echo "✅ Test 4 PASSED: TEMPLATE_VERSION file is valid"
    PASS=$((PASS+1))
else
    echo "❌ Test 4 FAILED: TEMPLATE_VERSION file invalid or missing"
    FAIL=$((FAIL+1))
fi

echo ""
echo "📊 Results: $PASS passed, $FAIL failed"
if [ $FAIL -gt 0 ]; then exit 1; else echo "🎉 All infra tests passed!"; fi
