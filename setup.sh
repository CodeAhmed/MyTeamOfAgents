#!/bin/bash
echo "Initializing MyTeamOfAgents structure..."

# Brain
mkdir -p brain/avatars
mkdir -p brain/memory/preferences
mkdir -p brain/memory/patterns
mkdir -p brain/memory/reflections
touch brain/SOUL.md

# Workspace (OpenClaw configuration)
mkdir -p workspace
touch workspace/IDENTITY.md
touch workspace/AGENTS.md
touch workspace/TOOLS.md
touch workspace/USER.md

# Skills
mkdir -p skills/ranger_pi
mkdir -p skills/forge_code
mkdir -p skills/scout_media

# Services
mkdir -p services/kanban_dashboard

# Infra
mkdir -p infra

# Docs
mkdir -p docs/architecture
mkdir -p docs/setup-guides
mkdir -p docs/api-specs

# Root files
touch .env.example
touch CHANGELOG.md
touch README.md

echo "Structure created. Next: configure OpenClaw & agents."