# 🧱 Tact MDT Integration Example

This example demonstrates how to integrate the **PhormS-MDT Core** protocol into a new project using the Universal Dev Template.

## What is MDT?
Multidimensional Token (MDT) is an RWA protocol featuring:
- 5-vector data structure (Identity, State, Quality, Legal, Lineage)
- ML-powered validation before minting
- Hard-split mechanics with parent burning
- 30-day time-lock consensus

## Quick Start

### 1. Clone PhormS-MDT Core
```bash
git clone https://github.com/para-dogma/phorms-mdt-core.git ../phorms-mdt-core
```

### 2. Generate Validated Data
```bash
cd ../phorms-mdt-core/scripts/generator
pip install -r requirements.txt
python3 mdt_generator.py --lightweight
# Output: generated_mdt.json
```

### 3. Build & Deploy Contract
```bash
npx tact --config ../phorms-mdt-core/tact.config.json
npx toncli deploy --network testnet ../phorms-mdt-core/contracts/build/mdt.tact
```

## Why Use This Template for MDT?
- ✅ Pre-configured Tact compiler & linter
- ✅ Jest test runner for @ton/sandbox
- ✅ Python environment for ML generator
- ✅ Git hooks for secret scanning (protect your wallet mnemonics!)
