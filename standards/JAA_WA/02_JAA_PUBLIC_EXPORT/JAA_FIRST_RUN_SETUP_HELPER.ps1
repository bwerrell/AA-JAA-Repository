# JAA First-Run Setup Helper
# Created: 2026-05-10 07:24:45
# Purpose: Create the minimal local JAA folder structure.

$
Root = 'C:\JAA'

$
Folders = @(
  $
Root,
  "$
Root\DAILY",
  "$
Root\COMMON",
  "$
Root\COMMON\ATOM_LOCKER",
  "$
Root\COMMON\RECEIPTS",
  "$
Root\TOOLS"
)

foreach ($
Folder in $
Folders) {
  New-Item -ItemType Directory -Force -Path $
Folder | Out-Null
}

$
Receipt = Join-Path $
Root 'COMMON\RECEIPTS\JAA_FIRST_RUN_SETUP_RECEIPT.md'
$
Now = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'

$
receiptLines = @(
'# JAA First-Run Setup Receipt',
'',
('Timestamp: ' + $
Now),
'',
'## Act performed',
'',
'Created minimal local JAA folder structure.',
'',
'## Root',
'',
$
Root,
'',
'## Folders created or verified',
'',
'- C:\JAA',
'- C:\JAA\DAILY',
'- C:\JAA\COMMON',
'- C:\JAA\COMMON\ATOM_LOCKER',
'- C:\JAA\COMMON\RECEIPTS',
'- C:\JAA\TOOLS',
'',
'## Status',
'',
'First-run setup complete.',
'',
'## Maxim',
'',
'Simple commands above.',
'Recoverable folders below.'
)

$
receiptLines | Set-Content -Encoding UTF8 $
Receipt

Get-Item $
Receipt | Select-Object FullName,Length,LastWriteTime | Format-Table -Auto
