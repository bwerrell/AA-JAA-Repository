# DAY74 Note Loop Command Contract

Timestamp: 2026-05-10 07:17:49

## Purpose

Define the ordinary-user command contract for governed note use.

## Principle

The user speaks simple operational commands.

The machine performs strict, receipted, recoverable actions.

## Command 1  WRITE Notes

### User meaning

Append this note to the current daily append-only note file.

### Machine action

- Identify current day folder.
- Append note to DAY##_APPEND_ONLY_NOTES.md.
- Preserve timestamp.
- Return file receipt.

### Governance

Writing is not classification, promotion, publication, or adjudication.

## Command 2  ATOMIZE Notes

### User meaning

Refresh the current day's candidate atom surface.

### Machine action

- Read current daily markdown notes.
- Split into candidate note atoms by heading block.
- Emit candidate atom JSONL.
- Emit manifest.
- Emit receipt.

### Governance

Candidate atoms are not canonical atoms.

Source markdown notes remain authoritative witnesses unless promotion says otherwise.

## Command 3  CALL Notes

### User meaning

Search prior notes or candidate atoms for relevant memory.

### Machine action

- Search candidate atom surfaces.
- Return relevant atom excerpts and source locators.
- Preserve distinction between candidate atom and source witness.

### Governance

CALL retrieves; it does not prove, decide, promote, or canonicalize.

## Command 4  READ Notes

### User meaning

Use selected notes or atoms as the authority field for continuation.

### Machine action

- Bind selected note/atom surfaces as the working context.
- Continue analysis or composition from the selected authority field.
- Preserve source references where possible.

### Governance

READ uses a selected authority field.

READ does not silently expand the authority field.

## Exportable design maxim

Simple at the mouth.
Strict in the machine.
Receipted in the filesystem.
