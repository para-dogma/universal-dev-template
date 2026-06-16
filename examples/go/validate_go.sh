#!/bin/bash
echo " Checking Go Environment..."
if command -v go &>/dev/null; then
    echo "✅ Go found"
    go mod tidy && echo "✅ Modules tidy"
    go vet ./... && echo "✅ Vet OK" || echo "❌ Vet failed"
    go test ./... && echo "✅ Tests passed" || echo "⚠️  Tests failed or missing"
else
    echo "❌ Go not found"
fi
