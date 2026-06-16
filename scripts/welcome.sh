#!/bin/bash

# Welcome message - run manually if needed
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    cat << 'HELP'

Universal Dev Template - Quick Start
=====================================

Check project:    ./scripts/start.sh diagnose
Get AI context:   ./scripts/start.sh ai
Validate code:    ./scripts/start.sh validate
Run tests:        ./scripts/start.sh test

For more info:    ./scripts/start.sh
HELP
    exit 0
fi

# Show welcome only if .no_welcome doesn't exist
if [ ! -f ".no_welcome" ]; then
    cat << 'WELCOME'

Welcome to Universal Dev Template!

Quick start:
  ./scripts/start.sh diagnose

Hide this message:
  touch .no_welcome

WELCOME
fi
