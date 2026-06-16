#!/bin/bash
echo "📝 Generating CHANGELOG.md from conventional commits..."
if [ ! -f CHANGELOG.md ]; then echo "# 📜 Changelog\n" > CHANGELOG.md; fi
git log --pretty=format:"- %s (%h)" --no-merges | head -20 >> CHANGELOG.md
echo "✅ CHANGELOG.md updated with latest commits!"
