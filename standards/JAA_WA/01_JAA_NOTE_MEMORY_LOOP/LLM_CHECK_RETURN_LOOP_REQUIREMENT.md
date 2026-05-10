# DAY74 LLM Check Return Loop Requirement

Timestamp: 2026-05-10 10:22:45

## Purpose

Define when the user must copy PowerShell output back to the LLM for receipt/status checking.

## Problem

During developmental JAA / WA helper use, automatic local receipt-checking may not yet be fully integrated.

In that case, the LLM cannot confirm completion unless the user returns the PowerShell output.

## Rule

If automatic local receipt-checking is not yet complete, the user must copy the PowerShell return output back to the LLM for review.

## User-facing instruction

After PowerShell finishes, copy the result and paste it back here so I can confirm the receipt/status.

## Two checking modes

### AUTO-CHECK MODE

The helper:

- writes the artifact or note
- generates the receipt
- checks the receipt
- reports status locally

The user does not need to paste the result back unless additional review is desired.

### LLM-CHECK MODE

The helper:

- writes the artifact or note
- generates the receipt
- returns status output

The user then:

- copies the PowerShell output
- pastes it back to the LLM
- asks for confirmation

The LLM then:

- checks returned paths
- checks status values
- checks counts where present
- checks expected receipt fields
- identifies missing or defective output

## Governance

LLM-check is a review of the returned proof surface.

LLM-check does not prove truth, legal sufficiency, publication fitness, adjudication, classification, canonical promotion, organizational acceptance, or remedy.

## Design target

LLM-check mode is acceptable during development and test-agent use.

The mature target remains automatic local receipt-checking wherever possible.

## Maxims

If the system cannot yet check itself, the user returns the proof surface.

The user acts once where possible.
Where not yet possible, the user returns the receipt surface.
