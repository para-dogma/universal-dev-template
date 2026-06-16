#!/bin/bash
echo "🦀 Checking Rust Environment..."
if command -v cargo &>/dev/null; then
    echo "✅ Cargo found"
    cargo check --quiet && echo "✅ Compilation OK" || echo "❌ Compilation failed"
    cargo clippy --quiet 2>/dev/null && echo "✅ Clippy OK" || echo "⚠️  Clippy warnings found"
else
    echo "❌ Rust/Cargo not found"
fi
