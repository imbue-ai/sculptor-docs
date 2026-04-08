# Sculptor

[//]: # (<img src="images/sculptor-hero.png" width="70%">)

Sculptor is a desktop app for running coding agents in parallel. Each agent works in an isolated copy of your repo, so multiple tasks can progress at the same time without conflicts.

Getting started: Connect a repo, create a workspace (an isolated clone), and prompt an agent to complete a task. When it's done, review the changes and merge them back into main. 

Create a new workspace for each concurrent task. Create multiple agents in a workspace when you want fresh context or want to iterate on the same problem from different angles.

---

## What's in these docs

- [Workspaces](workspaces.md) — how workspaces map to repos and how to create one
- [Interface](interface.md) — the chat panel, model picker, file references, context window, and terminal
- [Agents](agents.md) — running multiple agents and tracking complex tasks
- [Actions](actions.md) — saving prompts you use repeatedly
- [Code Review](code-review.md) — reviewing and merging agent changes
- [Slash Commands](slash-commands.md) — built-in commands and skills available in every session
