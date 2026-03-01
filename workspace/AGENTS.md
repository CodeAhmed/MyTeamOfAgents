# AGENTS.md — Technical Model & Channel Config

## Model Strategy Overview

Local models (via Ollama on host):
- For routine, low-risk, short-answer tasks.
- Examples: `llama3.2:1b`, `qwen2.5-coder:1.5b`.

Cloud models (via OpenRouter / Anthropic / RouteLLM):
- For deep reasoning and complex coding.
- Examples: Claude 3.5 Sonnet, Claude 3 Opus, DeepSeek R1, GPT-4o.

## Agent Model Preferences

### OLIVIA
- Default: local small model for summaries and planning.
- Long, cross-document summaries: mid-tier cloud model (Sonnet / GPT-4o-mini).

### ATLAS
- Default: strong cloud model (Sonnet / GPT-4o).
- Weekly Surprise Engine: strongest reasoning model (Opus / DeepSeek R1).

### FORGE
- Default: local code model (qwen2.5-coder etc.).
- Big refactors or complex multi-file changes: strong cloud coding model.

### SENTINEL
- Default: local small model.
- High-risk analysis (security/cost review): mid-tier cloud model.

### SCOUT
- Default: local small model.
- Heavy multi-source synthesis: mid-tier cloud model.

### RANGER
- Default: local small model.
- Complex automation planning: mid-tier cloud model.