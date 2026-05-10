# JAA Receipt Pattern

Timestamp: 2026-05-10 07:25:48

## Purpose

Define the simple receipt pattern used by JAA.

## Why receipts matter

A receipt proves that an action occurred.

A receipt makes the system recoverable.

A receipt lets the user and machine know what was done, when it was done, and where the result is located.

## Minimum receipt fields

Every important JAA action should record:

- Timestamp
- Act performed
- Source path, if any
- Output path, if any
- Status
- Governance note, if needed
- Working maxim, if useful

## Example receipt shape

# Example JAA Receipt

## Timestamp

YYYY-MM-DD HH:mm:ss

## Act performed

Describe the action performed.

## Source

Path or source material used.

## Output

Path or output material created.

## Status

Complete, partial, failed, review needed, or other clear status.

## Governance note

State any important boundary.

## Maxim

A short operational lesson or governing rule.

## Design rule

Receipts should be short enough to read and structured enough to search.

## Maxim

No receipt, no reliable recovery.
