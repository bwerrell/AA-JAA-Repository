# Send Note Procedure

## Rule
A note, report, or atom is sent only when it is placed in the governed repository under the correct class, accompanied by a sidecar receipt, reviewed for correctness, staged in git, committed with a meaningful message, pushed to the remote repository, and followed by clean working-tree confirmation.

## Sequence
1. Prepare the object in the correct class folder.
2. Prepare the sidecar receipt.
3. Review both for correctness.
4. Stage in git.
5. Commit with a meaningful message.
6. Push to the remote repository.
7. Confirm clean working tree.

## Failure rule
If admission, receipt, commit, push, or clean-state confirmation fails, the Send Note act is incomplete.

## Maxim
Writing alone does not constitute sending.
