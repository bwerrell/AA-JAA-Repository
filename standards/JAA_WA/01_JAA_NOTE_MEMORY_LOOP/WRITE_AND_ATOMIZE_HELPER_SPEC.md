# DAY74 WRITE and ATOMIZE Helper Specification

Timestamp: 2026-05-10 09:19:26

## Purpose

Define the combined JAA helper that writes an accepted note and atomizes the current day in one ordinary user cycle.

## User-facing concept

Save Note

## Internal helper

Write-JaaNoteAndAtomize

## User cycle

1. User writes a rough note or prompt.
2. AI suggests a cleaned note.
3. User accepts or modifies the note.
4. AI emits one PowerShell command.
5. User pastes the command into PowerShell and hits return.
6. The helper writes the note.
7. The helper atomizes the current day.
8. The helper returns a visible receipt.

## Required inputs

- Content

Optional:

- Day
- Root

## Current-day behavior

If Day is not supplied, the helper should read:

C:\AA_Records\COMMON\JAA_CURRENT_DAY.txt

## Required write behavior

The helper should:

- identify the active day
- create the day folder if needed
- create the append-only notes file if needed
- append the accepted note
- preserve the supplied text without silent alteration
- timestamp the entry
- return the note path

## Required atomization behavior

After writing, the helper should:

- scan the current day's markdown notes
- split notes into candidate atoms by heading block
- refresh the current day's candidate atom JSONL
- write or refresh the atomization manifest
- write or refresh the atomization receipt
- return source file count and candidate atom count

## Required receipt output

The helper should return:

- Status
- Day
- NoteFile
- NoteLength
- AtomFile
- AtomFileLength
- Manifest
- Receipt
- SourceFilesProcessed
- CandidateAtomsGenerated
- LastWriteTime

## Governance boundary

The helper writes and atomizes notes into candidate memory.

It does not publish, adjudicate, classify, legally validate, or promote candidate atoms into canonical records.

Source markdown notes remain authoritative unless a separate governed promotion act says otherwise.

## Operator-friction rule

The user should need only one ordinary physical action after accepting the note:

Copy/paste the PowerShell command and hit return.

## Maxims

The user writes meaning.
The system writes memory.

Every accepted note should be written and atomized in one ordinary user cycle.

---

## Addendum  Automatic Receipt Check

Timestamp: 2026-05-10 09:33:44

## Requirement

Write-JaaNoteAndAtomize should automatically generate and check receipts before reporting success.

## Rule

No successful Save Note helper action without an automatic receipt check.

## Required receipt checks

After writing and atomizing, the helper should verify:

- note file exists
- note file was updated
- atom candidate file exists
- manifest exists
- atomization receipt exists
- receipt contains expected act
- receipt contains expected status
- receipt contains source file count
- receipt contains candidate atom count
- source file count is greater than zero
- candidate atom count is greater than zero

## Required receipt-check output

The helper should return a receipt-check status.

Suggested values:

- RECEIPT_OK
- RECEIPT_MISSING
- RECEIPT_INCOMPLETE
- RECEIPT_MISMATCH
- RECEIPT_CHECK_FAILED

## User-facing consequence

The user should not need to remember to check receipts manually after ordinary Save Note use.

## Governance boundary

Receipt checking confirms that the helper generated expected evidence of the act.

It does not prove truth, legal sufficiency, publication fitness, adjudication, classification, or canonical promotion.

## Maxims

The user acts once.
The system writes, atomizes, receipts, checks, and reports.

No successful helper action without an automatic receipt check.
