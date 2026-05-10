# DAY74 Automatic Atomization Requirement

Timestamp: 2026-05-10 10:29:14

## Purpose

Define the requirement that memory-relevant JAA / WA helper actions trigger atomization automatically.

## Rule

Any helper or workflow that creates or changes material requiring later recall should trigger atomization automatically.

## Memory-relevant write

A memory-relevant write includes any act that creates or changes:

- daily notes
- JAA notes
- WA developmental notes
- potential claim draft objects
- standards notes
- helper specifications
- schemas
- status notes
- receipts or receipt-related status surfaces
- materials expected to be CALL-able later

## Required helper behavior

If a helper output is memory-relevant, the helper should:

1. Write the artifact or note.
2. Atomize the relevant day or memory surface.
3. Generate or refresh the atomization manifest.
4. Generate or refresh the atomization receipt.
5. Check that the atom file exists.
6. Check that the manifest exists.
7. Check that the receipt exists.
8. Report source file count.
9. Report candidate atom count.
10. Return status.

## Suggested status values

- ATOMIZATION_NOT_REQUIRED
- ATOMIZATION_REQUIRED
- ATOMIZATION_COMPLETE
- ATOMIZATION_REFRESH_COMPLETE
- ATOMIZATION_FAILED
- ATOMIZATION_RECEIPT_OK
- ATOMIZATION_RECEIPT_MISSING
- ATOMIZATION_RECEIPT_CHECK_FAILED

## Governance boundary

Atomization creates candidate memory atoms.

Atomization does not create canonical records.

Atomization does not publish, adjudicate, classify, legally validate, or promote records.

Source markdown notes remain authoritative unless a separate governed promotion act says otherwise.

## Development note

Manual atomization is acceptable during development.

The target operating pattern is automatic atomization for memory-relevant writes.

## Maxims

No memory-relevant write without atomization.
No atomization without receipt.
No receipt without check.
No check without report.
