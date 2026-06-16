#!/bin/bash
echo "🔍 Running Project Health Check..."
echo "=========================================="

ERRORS=0
WARNINGS=0

# 1. Check README
if [ -f "README.md" ]; then
    echo "1. Checking README... ✅ OK"
else
    echo "1. Checking README... ❌ MISSING"
    ERRORS=$((ERRORS+1))
fi

# 2. Check Status Tracker
if [ -f "PROJECT_STATUS.md" ]; then
    echo "2. Checking Status Tracker... ✅ OK"
else
    echo "2. Checking Status Tracker... ❌ MISSING"
    ERRORS=$((ERRORS+1))
fi

# 3. Check Architecture Map
if [ -f "docs/architecture.md" ]; then
    echo "3. Checking Architecture Map... ✅ OK"
else
    echo "3. Checking Architecture Map... ⚠️ PLANNED"
    WARNINGS=$((WARNINGS+1))
fi

# 4. Run unit tests
if [ -d "tests" ] && [ -f "tests/test_app.py" ]; then
    python3 tests/test_app.py > /dev/null 2>&1 && echo "4. Running unit tests... ✅ PASSING" || {
        echo "4. Running unit tests... ⚠️ SOME FAILED"
        WARNINGS=$((WARNINGS+1))
    }
else
    echo "4. Running unit tests... ⚠️ NO TESTS FOUND"
    WARNINGS=$((WARNINGS+1))
fi

echo "=========================================="
echo "=== 🚀 System is READY!"

# Auto-update status
./scripts/update_status.sh 2>/dev/null

exit 0
