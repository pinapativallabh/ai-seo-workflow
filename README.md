# AI SEO Workflow Automation Engine

## Overview
Stateful AI SEO automation engine built using n8n, PostgreSQL, Ollama, and Qwen3.

## Architecture

Keyword Research
↓
SERP Analysis
↓
Keyword Clustering
↓
Content Brief Generation
↓
Article Generation
↓
Optimization
↓
Publishing
↓
Tracking

## Current Features

- Keyword intake workflow
- SERP extraction and parsing
- Keyword clustering
- AI brief generation
- Structured JSON outputs
- PostgreSQL state tracking
- Local LLM integration with Ollama + Qwen3

## Tech Stack

- n8n
- PostgreSQL
- Ollama
- Qwen3:8B
- Docker

## Setup

1. Clone repository

```bash
git clone <repo-url>
cd ai-seo-workflow
```

2. Create environment file

```bash
cp .env.example .env
```

3. Start services

```bash
docker compose up -d
```

4. Import workflow JSON files into n8n

```text
workflows/
```

5. Run workflows in order

```text
SEO_01_TOPIC_QUEUE
↓
SEO_02_SERP_CLUSTER
↓
SEO_03_CLUSTER_ENGINE
↓
SEO_04_BRIEF_ENGINE
```

## Roadmap

Current:

✔ Keyword Research  
✔ SERP Analysis  
✔ Keyword Clustering  
✔ Content Brief Generation  

Planned:

⬜ Article Generation  
⬜ Optimization  
⬜ Publishing  
⬜ Tracking
