#!/bin/bash

# Show only once
if [ -f ".welcome_shown" ]; then
    exit 0
fi

cat << 'WELCOME'

🎉 Welcome to Universal Dev Template!

Quick Start:

  ./scripts/start.sh diagnose    # Check project
  ./scripts/start.sh ai          # AI context
  ./scripts/start.sh validate    # Validate code

Or just:
  ./scripts/start.sh

Good luck! 
WELCOME

# Mark as shown
touch .welcome_shown
