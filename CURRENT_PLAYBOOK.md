# Current Playbook

Restored: 2026-05-05 03:46:00
Status: Canonical live operational playbook.

## Canonical rule

This file is the live operational playbook.

When the user says "get the playbook," open and use:

C:\AA_Records\CURRENT_PLAYBOOK.md

Do not substitute memory.
Do not substitute similarly named files.
Do not claim the playbook is loaded unless this file has been inspected or the user has pasted its contents.


## AI action authority rule

AI must name the authority from which its action derives.

The assistant must not treat memory, fluency, inference, or conversational momentum as authority.

Before material action, the assistant should identify the governing authority surface that permits, directs, or constrains the action.

### Authority chain

Instruction  Authority Surface  Permitted Action  Receipt

### Candidate authority surfaces

- User command
- Canonical Playbook
- Local filesystem receipt
- Existing source document
- Daily note
- Query packet manifest
- Promotion gate
- Governance template
- GitHub standard document

### Operating maxims

Do not substitute memory for authority.

No AI action without named authority.

Before acting, name the authority.
After acting, receipt the act.

### Operational consequence

Future AI-assisted workflow should require the assistant to state the governing authority for material actions, especially before writing files, modifying authority surfaces, promoting materials, issuing queries, transmitting packets, or creating receipts.

## Authority rule

Local filesystem receipts govern.

Assistant memory is drafting aid only.
PowerShell output pasted by the user is evidence.
Unverified assumptions must be named as assumptions.

## Operating rules

1. Read before write.
2. One PowerShell command per cycle unless the user asks otherwise.
3. Preserve before overwrite.
4. Create receipts for material file operations.
5. Keep daily notes under C:\AA_Records\DAILY\DAYXX.
6. Keep persistent live authority surfaces under C:\AA_Records or C:\AA_Records\COMMON.
7. Keep frozen predecessors under C:\AA_Records\COMMON\PLAYBOOK_ARCHIVE.

## Ratchets carried forward

### Daily read-only preservation

Every live playbook deserves a frozen predecessor.

Before major repair or replacement, archive the existing playbook.

### Streaming incorporation

Never batch what can be streamed.

### Ideal note form

Every important note should be both human-readable and machine-readable when the act is operationally important.

Minimum useful handles:

- title
- timestamp
- day
- status
- actor/operator
- source path
- target path
- object id
- action taken
- decision
- evidence/receipt path
- next action
- maxim

### Doctrine recordkeeping

Markdown is for human reading.
JSONL is for machine retrieval.
The index is for navigation.

Doctrine files:

- C:\AA_Records\COMMON\DOCTRINE_NOTES.md
- C:\AA_Records\COMMON\DOCTRINE_NOTES_LEDGER.jsonl
- C:\AA_Records\COMMON\DOCTRINE_INDEX.md

## Day 69 repair note

On Day 69, the prior current-playbook surfaces were found fragmented:

- C:\AA_Records\CURRENT_PLAYBOOK.md contained only a Day 57 preservation ratchet.
- C:\AA_Records\COMMON\CURRENT_PLAYBOOK.md contained only a doctrine-machine-legibility addendum.

Both were archived before this canonical playbook was restored.

## Maxim

Do not simulate recovery.
Verify the surface.
Then operate.

## Ratchet: AI Requires Mechanical Oversight

Added: 2026-05-05 04:22:47

## Rule

AI requires considerable oversight.

## Interpretation

AI may simulate procedural compliance when it is actually relying on memory, pattern completion, or plausible reconstruction.

Therefore, in governed operations, trust must attach to verified surfaces and receipts, not to assistant confidence or fluent narration.

## Operating requirements

- Use canonical handles.
- Read before write.
- Preserve before overwrite.
- Require receipts for material operations.
- Distinguish memory, pasted text, file contents, and verified machine output.
- Do not claim recovery, loading, synchronization, or update without evidence.

## Maxim

Trust is not declared.
Trust is receipted.

---

# Day 70 JAA Ratchet

Timestamp: 2026-05-06 06:20:35

## Public JAA transparent operator loop

Public JAA now has a proven transparent operator loop:

. 'C:\JAA_Records\Start-JAA.ps1'
Jaa-Note "..."
Jaa-Call "..." | Format-List
Jaa-Status | Format-List
Jaa-ReceiptCoverage | Format-List

## Public JAA root

Canonical public JAA root:

C:\JAA_Records

## Operator principle

The operator should write notes and call notes by simple command.

"Call" means search and retrieve from the atom layer.

The operator should not need to manually browse files or manually trigger atomization during ordinary use.

## Atomization rule

Notes are witnesses.

Note atoms are retrieval units.

Receipts are proof witnesses.

Receipt atoms make proof recoverable.

## Receipt rule

No receipt without a receipt atom.

Every future JAA command that writes a receipt should also write a corresponding RECEIPT_ATOM.

## Receipt health rule

Receipt alignment is not count equality.

Receipt alignment is coverage.

A receipt field is healthy when every receipt appears to have at least one receipt atom pointing to it.

## Preferred helper

Future JAA commands should use:

New-JAAReceipt

rather than hand-coding receipt creation.

New-JAAReceipt is responsible for:

1. writing the receipt
2. writing the receipt atom
3. appending the receipt index
4. returning receipt and receipt atom paths

## Current maxim

Simple to the operator.
Explicit to the machine.
Receipted for recovery.


---

# JAA Canonical Paths

Timestamp: 2026-05-06 06:30:43

## Public root

C:\JAA_Records

## Loader

C:\JAA_Records\Start-JAA.ps1

## Function file

C:\JAA_Records\SYSTEM\TOOLS\JAA_Functions.ps1

## Notes

C:\JAA_Records\NOTES

## Note atoms

C:\JAA_Records\ATOMS\NOTES

## Receipts

C:\JAA_Records\SYSTEM\RECEIPTS

## Receipt atoms

C:\JAA_Records\ATOMS\RECEIPTS

## Indexes

C:\JAA_Records\INDEX\NOTE_INDEX.jsonl

C:\JAA_Records\INDEX\RECEIPT_INDEX.jsonl

## Packets

C:\JAA_Records\PACKETS

## Manifests

C:\JAA_Records\SYSTEM\MANIFESTS

## Operator load command

. 'C:\JAA_Records\Start-JAA.ps1'

## Core operator commands

Jaa-Note "..."
Jaa-Call "..." | Format-List
Jaa-Status | Format-List
Jaa-ReceiptCoverage | Format-List

## Helper commands

New-JAAReceipt
Invoke-JAAReceiptAtomBackfill

## Use rule

When writing future JAA PowerShell commands, use these canonical paths unless the operator explicitly specifies another root.


---

# Daily Atom Locker Rule

## Purpose

Daily notes should be routinely atomized and stored in the common atom locker.

Daily notes are working memory.

Atoms are reusable system memory.

The common locker preserves continuity.

## Rule

At daily closure, major transition, or after substantial doctrine/process work, atomize the day's markdown notes into first-pass candidate atoms.

## Common atom locker

C:\AA_Records\COMMON\ATOM_LOCKER

## Standard day folder pattern

C:\AA_Records\COMMON\ATOM_LOCKER\DAYXX

## Expected outputs

Each daily atomization should produce:

- DAYXX_NOTE_ATOM_CANDIDATES.jsonl
- DAYXX_ATOMIZATION_MANIFEST.md
- DAYXX_NOTE_ATOMIZATION_RECEIPT.md

## Governance status

First-pass atomization produces candidate atoms, not canonical atoms.

Candidate atoms require review before promotion to canonical AA atoms.

Source markdown notes remain authoritative witnesses unless and until a later governed promotion process says otherwise.

## Operating maxim

Daily notes are working memory.
Atoms are reusable system memory.
The common locker preserves continuity.


---

# Automated Atomization and Search Rule

## Purpose

Notes should enter reusable machine memory by routine, not by afterthought.

## Rule

Daily notes should be atomized automatically as a matter of course.

The resulting atoms should be stored in the common atom locker and made searchable on demand under Playbook rules.

## Common atom locker

C:\AA_Records\COMMON\ATOM_LOCKER

## Operating triggers

At minimum, atomization should occur:

- at daily closure
- at major transition
- after substantial doctrine/process work
- before search-dependent continuation
- when explicitly requested by the user

## Search rule

Atoms should be searchable on demand.

Search should return:

- atom ID
- day
- source file
- source heading
- content excerpt
- governance status
- path to the atom locker file
- path to the source markdown note

## Governance status

First-pass atoms are candidate atoms.

Candidate atoms are machine-readable working memory.

They are not canonical AA atoms until reviewed and promoted by a later governed process.

Source markdown notes remain authoritative witnesses unless and until promotion says otherwise.

## Implementation rule

Use one live Playbook only:

C:\AA_Records\CURRENT_PLAYBOOK.md

Do not create competing Playbook files.

## Operating maxim

Do not rely on memory to atomize memory.

## Strong maxim

Notes should enter reusable machine memory by routine, not by afterthought.


---

# READ Notes / CALL Notes / ATOMIZE Notes Rule

## Purpose

Define the operator vocabulary for using the common atom locker as the machine-readable memory surface for AI continuation.

## Common atom locker

C:\AA_Records\COMMON\ATOM_LOCKER

## ATOMIZE Notes

ATOMIZE Notes means convert daily or session markdown notes into first-pass candidate atoms in the common atom locker.

Atomization should occur routinely:

- at daily closure
- at major transition
- after substantial doctrine/process work
- before search-dependent continuation
- when explicitly requested by the user

## CALL Notes

CALL Notes means search the common atom locker for relevant atoms.

CALL Notes should return:

- atom ID
- day
- source file
- source heading
- content excerpt
- governance status
- path to the atom locker file
- path to the source markdown note

## READ Notes

READ Notes means open, retrieve, or package selected atom-locker material for AI use.

READ Notes should prefer atomized, machine-readable records over scattered markdown browsing.

READ Notes may include:

- atomizing the current day if needed
- searching the common atom locker
- opening the relevant day atom folder
- preparing a small retrieval packet
- identifying source markdown witnesses
- making selected atom files available for AI review

## Distinction

CALL Notes means search for relevant atoms.

READ Notes means expose the selected atom surface for AI continuation.

ATOMIZE Notes means create or refresh the candidate atom surface.

## Governance status

Candidate atoms are machine-readable working memory.

Candidate atoms are not canonical AA atoms until reviewed and promoted by a later governed process.

Source markdown notes remain authoritative witnesses unless and until promotion says otherwise.

## Operating maxim

Atomize routinely.
Call selectively.
Read from the locker.


---

# READ Notes Authority Field Rule

## Purpose

Clarify that READ Notes instructs AI to use the local notes / atoms as the authority field for answering the prompt.

## Rule

READ Notes means:

Use the relevant notes or atoms to answer the prompt.

Do not use outside sources of information unless the user explicitly authorizes them.

## Authority field

When READ Notes is invoked, the authority field is the selected material from:

C:\AA_Records\COMMON\ATOM_LOCKER

or a retrieval packet prepared from that atom locker.

## Distinction

CALL Notes means search the atom locker for relevant atoms.

READ Notes means use the selected notes / atoms as the source field for the answer.

READ Notes ONLY means answer from the selected notes / atoms only, without using outside sources.

## AI instruction

When the user invokes READ Notes, AI should:

- answer from the selected notes / atoms
- preserve source context where possible
- distinguish what is in the notes from inference
- avoid filling gaps from outside knowledge
- state when the notes do not contain enough information
- ask for or request authorization before using outside sources, unless the user has already authorized them

## Governance status

READ Notes creates a bounded authority field.

The answer is a derived product from the notes / atoms.

The model's general knowledge is not the authority unless separately authorized.

## Working maxim

Read from the locker.
Answer from the field.
Do not smuggle outside authority.

## Strong maxim

READ Notes means the notes are the authority field, not the world.


---

# JAA Save Note Cycle Ratchet

Timestamp: 2026-05-10 09:48:31

## Ratchet

JAA now has a standard Save Note cycle.

## User-facing cycle

1. User writes a rough prompt or note.
2. AI suggests a cleaned note.
3. User accepts or modifies the note.
4. AI emits one PowerShell command.
5. User pastes the command into PowerShell and hits return.
6. The system writes the note.
7. The system atomizes the current day.
8. The system receipts, checks, and reports.

## Operating doctrine

The user writes meaning.

The system writes memory.

Every accepted note should be written and atomized in one ordinary user cycle.

## Helper doctrine

The operator should name the work.

The system should remember the plumbing.

## Receipt doctrine

No successful helper action without an automatic receipt check.

The user acts once.

The system writes, atomizes, receipts, checks, and reports.

## Distribution doctrine

JAA is request-transmitted, not ambiently shared.

Stored as standard does not mean shared by default.

## Governance boundaries

JAA Save Note writes and atomizes notes into candidate memory.

It does not publish, adjudicate, classify, legally validate, or promote candidate atoms into canonical records.

Candidate atoms are not canonical atoms.

Source markdown notes remain authoritative unless a separate governed promotion act says otherwise.

## Central standards reference

Repository:

C:\AA_Records\AA_JAA_REPOSITORY

Shared standards root:

standards\JAA_WA

Latest known central standards commit:

56130af  List JAA Save Note materials in README

## Key standard documents

- standards\JAA_WA\README.md
- standards\JAA_WA\00_GOVERNANCE\JAA_REQUEST_TRANSMISSION_STANDARD.md
- standards\JAA_WA\01_JAA_NOTE_MEMORY_LOOP\JAA_SIMPLE_USER_NOTE_CYCLE.md
- standards\JAA_WA\01_JAA_NOTE_MEMORY_LOOP\WRITE_AND_ATOMIZE_HELPER_SPEC.md
- standards\JAA_WA\01_JAA_NOTE_MEMORY_LOOP\AUTO_RECEIPT_CHECK_REQUIREMENT.md
- standards\JAA_WA\01_JAA_NOTE_MEMORY_LOOP\drafts\WRITE_JAA_NOTE_AND_ATOMIZE_HELPER_DRAFT.ps1

## Personal operating maxim

A standard that cannot be found cannot govern.

Fast is useful only when the receipts keep up.

---

# DAY74 Late Ratchet  JAA / WA Standards, Customization, and Receipt Doctrine

Timestamp: 2026-05-10 11:58:08

## Central standards status

Latest known central standards commit:

10fca4a  List local customization doctrine in README

Central standards root:

C:\AA_Records\AA_JAA_REPOSITORY\standards\JAA_WA

Central README:

C:\AA_Records\AA_JAA_REPOSITORY\standards\JAA_WA\README.md

## JAA operating posture

JAA is request-transmitted, not ambiently shared.

JAA may move toward selected test-agent use.

JAA is not broad public release.

## WA operating posture

WA remains developmental and contained.

WA should not be treated as ready for public intake, public transmission, or live claims operation.

WA claim generation is a specialized subset of JAA note-writing with WA-specific standards-checking.

Every potential WA claim should leave a local JAA note.

A potential claim is not a submitted claim.
A submitted claim is not an adjudicated claim.
A receipted claim is not a granted claim.

## Save Note / helper doctrine

The user acts once where possible.

The system writes, atomizes, receipts, checks, and reports.

Where automatic local checking is not yet complete, the user returns the PowerShell proof surface to the LLM for review.

## Atomization doctrine

No memory-relevant write without atomization.

No atomization without receipt.

No receipt without check.

No check without report.

## Artifact doctrine

No artifact without receipt.

No receipt without check.

No check without report.

## Local customization doctrine

Central standards govern.

Local customizations persist.

Central updates should not erase local customization.

Local customization should not silently mutate the central standard.

Local customization is not deviation.

It is preserved adaptation.

Useful adaptations may be reviewed for promotion through a governed act.

## Local customization surface

C:\AA_Records\COMMON\LOCAL_CUSTOMIZATIONS\USER_PLAYBOOK_CUSTOMIZATIONS.md

C:\AA_Records\COMMON\LOCAL_CUSTOMIZATIONS\USER_PLAYBOOK_CUSTOMIZATIONS_MANIFEST.md

C:\AA_Records\COMMON\LOCAL_CUSTOMIZATIONS\USER_PLAYBOOK_CUSTOMIZATIONS_RECEIPT.md

## Runtime playbook concept

Runtime playbook = central standard + local customization + current day context + active task context.

## Maxims

The user acts once where possible.
Where not yet possible, the user returns the receipt surface.

Central standards govern.
Local customizations persist.

Local customization is not deviation.
It is preserved adaptation.

WA standardization has begun, but WA remains contained.

---

# DAY75 Ratchet: Perform to Standard

Timestamp: 2026-05-11 03:44:48

## Trigger

A memory-relevant Day 75 startup/status note was written with only a file receipt, while atomization, atomization receipt, check, and report had to be invoked separately after the operator noticed the gap.

## Rule

The assistant must not merely help write the standard.

The assistant must operate under the standard.

For Day notes, doctrine notes, status notes, startup notes, closure notes, project-control notes, and other memory-relevant writes, the default command must include:

1. write
2. atomize
3. receipt
4. check
5. report

unless the user expressly asks for draft-only or file-only writing.

## Partial-command disclosure

If the assistant emits a partial command, it must explicitly state what the command does and what required standard steps remain undone.

## Operating consequence

Fluent compliance language is not compliance.

Compliance is mechanical execution against the governing playbook, visible in receipts and check reports.

## Maxims

Do not simulate compliance.

Perform to standard.

Worth our electrolytes means governed output under load.

Performed.
Receipted.
Checked.
Reported.
Recoverable.


---

# DAY76 Ratchet: Playbook Tightening / No Silent Authority Escalation

Timestamp: 2026-05-13 05:03:55

## Purpose

Tighten the canonical live operational playbook by clarifying scope, default behavior, failure handling, receipt epistemology, authority escalation, runtime precedence, and confusion reporting.

## Memory-Relevant Write Definition

A memory-relevant write is any file operation that records doctrine, procedure, project status, operational decisions, day startup, day closure, task transition, external communication, artifact creation, governance boundary, or future action.

Memory-relevant writes include, but are not limited to:

- startup notes
- closure notes
- doctrine notes
- project-control notes
- status notes
- decision notes
- external communication notes
- artifact manifests
- transmission receipts
- customization notes
- playbook changes

Unless expressly designated draft-only or file-only by the user, memory-relevant writes must follow the full cycle:

write -> atomize -> receipt -> check -> report

## Partial Command Warning Template

If a command does not complete the full required cycle, the assistant must say:

"This is a partial command. It performs: [steps performed]. It does not perform: [steps omitted]. Required remaining steps: [remaining steps]."

The assistant must not describe a partial command as complete, compliant, seated, governed, or receipted.

## Failed Check Rule

If any check fails, the operation is not complete.

The assistant must:

1. identify the failed check
2. avoid claiming success
3. preserve any created files unless deletion is explicitly requested
4. emit one corrective command when possible
5. distinguish repaired state from original failed state
6. create or update a repair receipt if the corrective action is material

## Receipt Epistemology Rule

A receipt proves that an act occurred.

A receipt does not prove that the content is true, complete, lawful, warranted, canonical, public, transmitted, or adjudicated unless the receipt expressly records that governed act and its authority.

## No Silent Authority Escalation

No object may silently move to a higher authority state.

Draft does not become final.
Note does not become doctrine.
Candidate atom does not become canonical atom.
JAA note does not become WA claim.
Local customization does not become central standard.
Stored file does not become transmitted packet.
Private record does not become public artifact.

Each authority escalation requires an explicit governed act and receipt.

## Runtime Authority Precedence

When operating, apply authority in this order:

1. User's current explicit instruction
2. Current live playbook
3. Relevant central standard
4. Relevant local customization
5. Current day context
6. Prior receipts and verified outputs
7. Assistant memory as drafting aid only

If these conflict, name the conflict and follow the highest valid authority unless doing so would violate a safety, legal, or governance boundary.

## Confusion Report Rule

When uncertain, the assistant must report confusion in this form:

- Confusion:
- Authority checked:
- Assumption, if any:
- Safe next act:
- What remains unresolved:

The assistant should prefer a bounded safe next act over improvisation.

## Strong maxim

Nothing climbs the authority ladder without a receipt.

## Operating maxim

Define scope.
Warn on partials.
Fail visibly.
Escalate only by receipt.
Report confusion mechanically.



---

# Current Status Surface

Added: 2026-05-15 04:56:21

## Purpose

The file below is the persistent orientation surface for major active systems:

C:\AA_Records\COMMON\CURRENT_STATUS.md

It currently tracks status for:

- AA / Operational_AA
- HAA
- JAA
- WA

## Operating rule

When orientation is needed, call CURRENT_STATUS.md before reconstructing project status from memory.

## Authority boundary

CURRENT_STATUS.md is a status and orientation surface.

It does not replace:

- CURRENT_PLAYBOOK.md
- source markdown witnesses
- append-only notes
- receipts
- manifests
- JSONL atom files
- repositories
- governed exports

## Maxim

Status orients.
Receipts prove.
Sources govern.



---

## Day 82 startup simplification addendum

Added: 2026-05-20 04:48:21

### Authority

This addendum derives from Day 82 observed startup friction and the user's instruction to adjust the startup process for simplification.

Relevant Day 82 notes:

- DAY82 Startup Friction Note
- DAY82 Two-Cycle Startup Standard Note
- DAY82 Startup Simplification Target Note
- DAY82 Note-Taking Command Atomization Requirement

### Startup simplification rule

Day startup should target approximately two cycles.

Cycle One: load and verify the day surface and canonical playbook authority.

Cycle Two: create or confirm the append file, atom locker, manifest, startup receipt, candidate atoms, and atom-heading report.

### Prepared-helper principle

Startup should call a prepared routine rather than require the assistant to rebuild the startup machinery interactively.

Preferred helper name: Start-AADay.

### Note-taking atomization rule

A standard note-taking command should append the note and immediately refresh the candidate atom file in the same act.

No memory-relevant note without atomization.

### Console-safety rule

Prefer paste-safe line-array construction for substantial note and receipt creation in the live PowerShell console.

Avoid fragile here-string forms during startup unless specifically needed.

### Maxims

Simplify the mouth; harden the machine.
Startup should call the machine, not rebuild the machine.
Two cycles is the target.
The note is the witness. The atom is the retrieval unit.
One act should update both surfaces.
Eventual compliance is not smooth operation.
