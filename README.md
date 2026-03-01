# MyTeamOfAgents

> A personal **Agent Operating System** built on top of the official **OpenClaw** engine.

<p align="center">
  <!-- Replace with your own banner or logo later -->
  <!-- <img src="https://raw.githubusercontent.com/CodeAhmed/MyTeamOfAgents/main/docs/assets/banner.png" width="640" /> -->
</p>

<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/License-MIT-blue.svg"></a>
  <a href="https://github.com/CodeAhmed/MyTeamOfAgents/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/CodeAhmed/MyTeamOfAgents?style=social"></a>
  <a href="https://github.com/CodeAhmed/MyTeamOfAgents/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/CodeAhmed/MyTeamOfAgents"></a>
  <a href="https://github.com/CodeAhmed/MyTeamOfAgents/actions"><img alt="CI status" src="https://img.shields.io/badge/CI-coming%20soon-lightgrey.svg"></a>
</p>

---

## ✨ What is this?

MyTeamOfAgents is an experimental **AI Agent OS** designed to:

- Run a **team of specialized agents**: Olivia (Chief of Staff), Atlas (Strategist), Forge (Dev/DevOps), Sentinel (Guardian), Scout (Curator), Ranger (Pi4 MediaOps).
- Orchestrate automations across your **Mac** and **Raspberry Pi 4**.
- Serve as a **learning lab** for AI engineering, infra-as-code, and multi-agent workflows.

---
## Core Ideas

- **OpenClaw as the brain**: Use the official OpenClaw engine for orchestration and routing. Don’t reinvent the core agent runtime.
- **Agents as teammates**:
  - **Olivia** – Chief of Staff (planning, inbox/calendar summarization, delegating).
  - **Atlas** – Strategist & Surprise Engine (patterns, weekly improvements).
  - **Forge** – Developer / DevOps (code, infra, dashboards).
  - **Sentinel** – Security & Cost guardian.
  - **Scout** – Media & Tutorial curator.
  - **Ranger** – MediaOps & Raspberry Pi 4 engineer.
- **Brain & Memory**: Structured memory under `brain/` with preferences, patterns, and reflections.
- **Reproducible infra**: Everything wired through Docker, so the whole system moves between machines.

For the full design doc, see **`OPENCLAW_DESIGN.md`**.

---

## Repository Structure

High-level layout:

```text
MyTeamOfAgents/
├── .openclaw/              # Internal engine state (gitignored)
├── brain/                  # Soul & memory
│   ├── avatars/            # Agent avatars (optional)
│   ├── memory/
│   │   ├── preferences/
│   │   ├── patterns/
│   │   └── reflections/
│   └── SOUL.md             # Global constitution
├── workspace/              # OpenClaw workspace config
│   ├── IDENTITY.md         # Agent personas
│   ├── AGENTS.md           # Technical model & routing prefs
│   ├── TOOLS.md            # Tool registry
│   └── USER.md             # Operator profile
├── skills/                 # Executable tools
│   ├── ranger_pi/
│   ├── forge_code/
│   └── scout_media/
├── services/
│   └── kanban_dashboard/   # Future: custom Kanban UI
├── infra/
│   └── docker-compose.yml  # OpenClaw + Postgres
├── docs/                   # Architecture & guides
├── .gitignore
├── OPENCLAW_DESIGN.md
├── CHANGELOG.md
└── README.md
```

---

## Getting Started

### 1. Clone the Repo

```bash
git clone https://github.com/<your-username>/MyTeamOfAgents.git
cd MyTeamOfAgents
```

### 2. Initialize the Folder Structure (optional if already committed)

```bash
bash setup.sh
```

This will create the `brain/`, `workspace/`, `skills/`, `infra/`, and `docs/` scaffolding.

### 3. Configure OpenClaw

You can either:

**A. Use Docker (recommended to start)**

```bash
cd infra
docker compose up -d
```

Then open the dashboard at:

- http://localhost:3000

**B. Use the native OpenClaw CLI** (if you want):

```bash
curl -fsSL https://openclaw.ai/install.sh | bash
openclaw onboard --install-daemon
```

### 4. Fill in Your Identity Files

Edit:

- `workspace/USER.md` – who you are, what you want.
- `workspace/IDENTITY.md` – personalities & responsibilities for each agent.
- `workspace/AGENTS.md` – model/provider choices and routing.
- `workspace/TOOLS.md` – first tools you plan to build.

### 5. Build Your First Tool (Ranger → Pi 4)

Implement a simple SSH exec skill under `skills/ranger_pi/` that can run `uptime` on your Raspberry Pi 4.

Wire it to OpenClaw as a tool, and let **Ranger** use it. This is your “Hello, World” of real automation.

---

## Agents Overview

- **Olivia (Chief of Staff)**  
  Personal operations, scheduling, turning requests into delegated tasks.

- **Atlas (Strategist / Surprise Engine)**  
  Analyzes patterns and reflections, then proposes weekly improvements and automations.

- **Forge (Developer / DevOps)**  
  Manages this repo, docker-compose, and builds the Kanban dashboard & skills.

- **Sentinel (Guardian)**  
  Watches costs, risks, and repeats; can veto risky actions and propose safer flows.

- **Scout (Curator)**  
  Finds, summarizes, and routes tutorials and articles into actionable tasks.

- **Ranger (MediaOps / Pi 4)**  
  Automates the Raspberry Pi 4 media stack (Transmission, Sickrage, Plex, VPN).

---

## Contributing

This project starts as a personal lab, but contributions are welcome as it matures.

Ideas for contributions:

- New skills (tools) under `skills/` for common workflows.
- Example configs for different model providers.
- Docs: setup guides, troubleshooting, best practices.
- Improvements or alternatives to the Kanban dashboard.

If you open a PR, please include:

- A short description of the change.
- Any new tools documented in `workspace/TOOLS.md`.
- Updates to `CHANGELOG.md` if it’s a notable change.

---

## License

This project is open source under the **MIT License** (see `LICENSE`).

---

## Status

- **Phase:** Early, experimental, but structured.  
- **Audience:** People who want to learn AI engineering by actually shipping an agent system, not just playing in notebooks.

If you fork this, feel free to adapt the agents, rename them, or swap out tools and models. The goal is to give you a **clear, opinionated starting point**.
