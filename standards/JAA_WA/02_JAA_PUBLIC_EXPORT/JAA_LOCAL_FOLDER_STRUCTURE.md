# JAA Local Folder Structure

Timestamp: 2026-05-10 07:23:16

## Purpose

Define the simplest local folder structure for an exportable JAA installation.

## Root folder

C:\JAA

## Minimal structure

C:\JAA
C:\JAA\DAILY
C:\JAA\COMMON
C:\JAA\COMMON\ATOM_LOCKER
C:\JAA\COMMON\RECEIPTS
C:\JAA\TOOLS

## DAILY

Purpose:

Holds dated daily note folders.

Example:

C:\JAA\DAILY\DAY001
C:\JAA\DAILY\DAY001\DAY001_APPEND_ONLY_NOTES.md

## COMMON

Purpose:

Holds reusable system-level material that persists across days.

## COMMON\ATOM_LOCKER

Purpose:

Holds candidate atom files created from daily notes.

Example:

C:\JAA\COMMON\ATOM_LOCKER\DAY001\DAY001_NOTE_ATOM_CANDIDATES.jsonl
C:\JAA\COMMON\ATOM_LOCKER\DAY001\DAY001_ATOMIZATION_MANIFEST.md

## COMMON\RECEIPTS

Purpose:

Optional shared receipt location for important system actions.

Receipts may also be stored inside the relevant daily folder.

## TOOLS

Purpose:

Holds local helper scripts for writing notes, atomizing notes, calling notes, and reading selected notes.

## Design rule

The ordinary user should not need to browse this structure during normal use.

The structure exists so the system remains recoverable.

## Maxim

Simple commands above.
Recoverable folders below.
