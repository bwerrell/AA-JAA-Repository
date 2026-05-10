# DAY74 JAA Helper Design Requirements

Timestamp: 2026-05-10 08:22:26

## Purpose

Define design requirements for future JAA helper scripts based on DAY74 operating doctrine.

## Core command loop

Future helpers should support the ordinary command loop:

- WRITE Notes
- ATOMIZE Notes
- CALL Notes
- READ Notes

## User-facing design

The user-facing surface should be simple.

The operator should not need to remember paths, repository structure, atom-locker mechanics, or receipt mechanics during ordinary use.

## Machine-facing design

The machine-facing action should remain strict, explicit, recoverable, and receipted.

## Operator-friction requirement

Helpers must tolerate ordinary keyboard-based operator errors.

Likely operator errors include:

- forgetting to hit return
- pasting a partial command
- duplicating a command
- running from the wrong location
- repeating a command after uncertainty
- leaving PowerShell waiting for a terminator
- missing a prompt or status message

## Required helper behavior

Future helpers should favor:

- short command names
- clear prompts
- visible status output
- idempotent or safely repeatable actions where possible
- verification after important actions
- explicit receipts
- safe failure messages
- no silent mutation
- no hidden substitution

## Record principle

The system may forgive ordinary operator mistakes, but it must not deceive the record.

## Supporting formulation

No trick of hand.
No hidden substitution.
No silent mutation.
The record must show what the hand actually did.

## Maxim

The interface must forgive the hand without deceiving the record.
