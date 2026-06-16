#!/bin/bash
echo " Creating Offline Skill Pack..."

# Обновляем статус перед упаковкой для актуальности
if [ -f "./scripts/update_status.sh" ]; then
    ./scripts/update_status.sh > /dev/null 2>&1
fi

# Создаем временную папку
PACK_DIR="skill-pack"
mkdir -p $PACK_DIR

# Копируем ключевые артефакты
cp .ai-instructions.md $PACK_DIR/ 2>/dev/null || echo "⚠️ .ai-instructions.md not found"
cp PROJECT_STATUS.md $PACK_DIR/ 2>/dev/null || echo "⚠️ PROJECT_STATUS.md not found"
cp -r docs/ $PACK_DIR/ 2>/dev/null || echo "⚠️ docs/ not found"
cp -r scripts/ $PACK_DIR/ 2>/dev/null || echo "⚠️ scripts/ not found"
cp -r examples/ $PACK_DIR/ 2>/dev/null || true # Опционально
cp README.md $PACK_DIR/ 2>/dev/null || true
cp LICENSE $PACK_DIR/ 2>/dev/null || true

# Генерируем манифест внутри пака
cat > $PACK_DIR/MANIFEST.md << 'INNER_EOF'
# 🧠 Offline Engineering Skill Pack

This archive contains the complete engineering context and standards for this project.

## How to Use:
1. Unpack into a new directory.
2. Run `./scripts/validate.sh` to initialize environment.
3. Feed `.ai-instructions.md` and `PROJECT_STATUS.md` to your AI assistant.
4. Start coding with established standards immediately.

## Contents:
- **AI Instructions:** Core personality and coding rules.
- **Project Status:** Real-time state of development.
- **Architecture:** Visual maps and documentation.
- **Automation:** Health checks and status updaters.
INNER_EOF

# Архивируем
ARCHIVE_NAME="$(basename $(pwd))-skill-pack.tar.gz"
tar -czf "$ARCHIVE_NAME" $PACK_DIR/
rm -rf $PACK_DIR/

echo "✅ Skill Pack created successfully!"
echo "📂 File: $ARCHIVE_NAME"
echo "📏 Size: $(du -h "$ARCHIVE_NAME" | cut -f1)"
