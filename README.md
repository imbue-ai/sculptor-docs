# Sculptor

Sculptor is a desktop app for managing agentic coding workflows. You give it a task, and it runs an agent against your codebase. Sculptor helps with handling the conversation, tracking progress, and showing you the diffs when it's done.

---

## The problem with AI development nowadays

AI coding agents are useful, but managing them is actually quite hard. You need to keep a terminal open, remember what you sent, track what changed, and manually review diffs scattered across your editor. When you're running multiple agents or longer tasks, the overhead compounds.

Sculptor removes that overhead. It gives agents a proper interface. Workspaces are tied to repos, you have a chat panel for directing the agent, a task breakdown view for complex work, and a code review panel for inspecting and merging changes.

---

## How it works

Each workspace maps to a single repository. When you create a workspace, Sculptor clones the repo locally and runs the agent against that clone. Your original repo is untouched until you decide to merge.

Each workspace can run multiple agents simultaneously. Agents are independent, so each has its own conversation, its own task context, and its own set of changes.

When an agent finishes, you review its work in the code review panel and merge it into the local clone when you're ready.

---

## What's in these docs

- [Workspaces](workspaces.md) — how workspaces map to repos and how to create one
- [Interface](interface.md) — the chat panel, model picker, file references, context window, and terminal
- [Agents](agents.md) — running multiple agents and tracking complex tasks
- [Actions](actions.md) — saving prompts you use repeatedly
- [Code Review](code-review.md) — reviewing and merging agent changes
- [Slash Commands](slash-commands.md) — built-in commands and skills available in every session
