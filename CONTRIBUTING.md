# Contributing to TeamOrre – Pokémon Colosseum Decompilation

Welcome to the TeamOrre Pokémon Colosseum decomp effort.  
The project is in early setup, so the most important goal right now is keeping the repository organized and consistent as we prepare the toolchain, symbols, and splits.

This document explains how to contribute safely and effectively.

## Project Goals

- Recreate Pokémon Colosseum’s code in C in a way that rebuilds to a matching retail DOL.
- Keep the repository legally clean:
  - No ROMs
  - No ISOs
  - No copyrighted Nintendo assets
- Maintain a clean, sustainable codebase that can grow for years.

## Repository Structure

```
asm/        → Raw PowerPC assembly dumps (DOL and REL)
src/        → Decompiled C code (empty for now)
include/    → Reconstructed headers
config/     → symbols.txt, splits.txt, linker script
tools/      → Utility scripts (extractors, converters, etc.)
data/       → Game data tables in clean-room reconstructed form
docs/       → Documentation
```

Do not place game asset dumps, files from extracted ISOs, or copyrighted data here.

## Team Roles

These correspond to GitHub Teams inside the organization:

### xd-decomp-core
XD-focused developers who may open PRs here.

### colo-decomp-core
Core Colosseum developers.  
Can push feature branches, review and merge PRs, and maintain repo stability.


### research-contributors
Work in the `orre-research` repo (symbol maps, Ghidra notes, documentation).  
Read-only access here.

### tool-contributors
Primarily develop utilities.  
Open PRs here but do not push directly.

## General Contribution Rules

### 1. No direct commits to `main`
All work must be done through pull requests.

### 2. One purpose per PR
Small, focused PRs are easier to review and maintain.

Examples of good PRs:
- “Add 12 new retail Colosseum symbols”
- “Document OSAlloc functions in docs/”
- “Initial split regions for .text segment”
- “Add tool to dump REL headers”

### 3. Do not add mixed C and ASM for the same function
A function must be either:
- fully in `asm/`, or  
- fully decompiled in `src/`

Never both at once.

### 4. Naming Conventions
- Use names from symbol maps when available.
- Otherwise, use clear, descriptive technical names.
- Avoid lore names unless confirmed by evidence.

### 5. Legal Boundaries
- Do not commit ROMs or ISOs  
- Do not paste copyrighted data  
- Do not commit extracted copyrighted tables or assets  

Clean-room reconstruction only.

## Working on Symbols

Add new symbols to `config/symbols.txt`.

Guidelines:
- Keep entries clean, sorted, and consistently formatted  
- Document where the symbol came from (demo leak, retail alignment, Ghidra, etc.)  
- Avoid adding speculative names without evidence  

Example:
```
# From retail alignment
0x80234560 OSReport
0x80004200 main
```

## Working on Splits

Splits go into `config/splits.txt`, defining DOL/REL segment boundaries.

Guidelines:
- Keep the file clean and documented  
- Note the method used (Ghidra section offsets, comparison with PokeORRE, etc.)  
- Keep placeholder splits until confirmed  

## Tools

Scripts should go into `tools/` or the `orre-tools` repository depending on size.

Tool guidelines:
- Prefer small, single-purpose tools  
- Document how to use them  
- Avoid tools requiring proprietary software  
- Leave clear instructions for setup if needed  

## Getting Started

If you want to begin contributing:

1. Check the Issues tab for `good first issue` or `help wanted` tasks.
2. Join the TeamOrre discussion channel.
3. Ask before adding new C source files or changing the project structure.
4. For symbols/splits work, open a PR with your proposed changes.

Thank you for contributing to TeamOrre and helping preserve and understand these games.
