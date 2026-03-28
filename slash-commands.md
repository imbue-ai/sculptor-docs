# Slash Commands

Type `/` in the Sculptor input box to open the command and skill picker. Sculptor ships with Claude Code's built-in commands and bundled skills.

---

## Built-in commands

These are fixed commands that execute session-level operations.

### `/clear`

Clears the conversation history and frees up context. Use this when you're starting a new task and don't need the previous conversation in context. Aliases: `/reset`, `/new`.

### `/compact [instructions]`

Summarizes the conversation history to free up context window space without losing the thread. Useful in long sessions where you're approaching the context limit. Pass optional instructions to control what the summary focuses on — for example, `/compact focus on the auth changes` will bias the summary toward that area.

### `/copy [N]`

Copies the last agent response to your clipboard. Pass a number to copy an earlier response: `/copy 2` copies the second-to-last. When the response contains code blocks, an interactive picker lets you select a specific block or the full response.

---

## Bundled skills

Bundled skills are prompt-based — they give the agent a detailed playbook and let it orchestrate the work using its tools. Unlike fixed commands, skills can spawn parallel subagents, read files, and adapt to your codebase.

### `/batch <instruction>`

Orchestrates large-scale changes across a codebase in parallel. The agent researches the codebase, decomposes the work into independent units, and presents a plan. Once you approve, it spawns one background agent per unit in an isolated git worktree. Each agent implements its unit, runs tests, and opens a pull request.

Requires a git repository. Example: `/batch migrate src/ from Solid to React`

### `/loop [interval] <prompt>`

Runs a prompt repeatedly on an interval for as long as the session stays open. Useful for polling a deployment, watching a PR, or periodically re-running another skill.

Example: `/loop 5m check if the deploy finished`

### `/simplify [focus]`

Reviews your recently changed files for code quality, reuse, and efficiency issues, then fixes them. Spawns three review agents in parallel, aggregates their findings, and applies the fixes. Pass text to focus on a specific concern: `/simplify focus on memory efficiency`

---

## Full command reference

Sculptor exposes Claude Code's built-in command set. See the [Claude Code commands reference](https://code.claude.com/docs/en/commands).
