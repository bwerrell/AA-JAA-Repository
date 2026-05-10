# DAY74 JAA Simple User Note Cycle

Timestamp: 2026-05-10 09:17:54

## Purpose

Define the simple JAA user cycle for entering a note.

## Desired user experience

The user should be able to:

1. Write a rough prompt or note.
2. Receive a suggested cleaned note.
3. Accept or modify the suggested note.
4. Copy one PowerShell command.
5. Paste it into PowerShell.
6. Hit return.
7. Receive a visible receipt.

## Required command behavior

The single PowerShell command should:

- write the accepted note to the current day's append-only note file
- use the current-day pointer rather than requiring the user to remember the day number
- atomize the current day's notes after writing
- update the candidate atom surface
- emit or update the atomization manifest
- emit or update the atomization receipt
- return a visible receipt showing the note file, atom file, manifest, receipt, counts, and status

## User-facing command concept

Save Note

## Internal helper concept

Write-JaaNoteAndAtomize

## Design rule

The user should not have to separately remember to atomize after writing an important note.

## Governance boundary

This command writes and atomizes notes into candidate memory.

It does not publish, adjudicate, classify, legally validate, or promote candidate atoms into canonical records.

Source markdown notes remain authoritative unless a separate governed promotion act says otherwise.

## Operator-friction rule

The user should need only one ordinary physical action after accepting the note:

Copy/paste the PowerShell command and hit return.

## Maxim

The user writes meaning.
The system writes memory.

Every accepted note should be written and atomized in one ordinary user cycle.
