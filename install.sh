#!/bin/bash
# Universal Dev Template - One-Line Install

echo "Installing..."
git clone https://github.com/para-dogma/universal-dev-template.git my-project
cd my-project
chmod +x scripts/*.sh
./scripts/start.sh diagnose

echo ""
echo "Done! Next steps:"
echo "  cd my-project"
echo "  ./scripts/start.sh ai"
