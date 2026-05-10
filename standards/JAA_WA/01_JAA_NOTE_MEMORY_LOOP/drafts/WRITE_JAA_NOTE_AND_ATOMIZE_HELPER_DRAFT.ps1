function Write-JaaNoteAndAtomize {
  param(
    [Parameter(Mandatory=$true)]
    [string]$Content,

    [string]$Root = 'C:\AA_Records',

    [string]$Day = $null
  )

  if ([string]::IsNullOrWhiteSpace($Day)) {
    $pointer = Join-Path $Root 'COMMON\JAA_CURRENT_DAY.txt'

    if (-not (Test-Path $pointer)) {
      throw "No Day supplied and current-day pointer not found: $pointer"
    }

    $Day = (Get-Content $pointer -Raw).Trim()

    if ([string]::IsNullOrWhiteSpace($Day)) {
      throw "Current-day pointer is empty: $pointer"
    }
  }

  $sourceFolder = Join-Path $Root "DAILY\$Day"
  $locker = Join-Path $Root 'COMMON\ATOM_LOCKER'
  $dayAtomFolder = Join-Path $locker $Day

  New-Item -ItemType Directory -Force -Path $sourceFolder | Out-Null
  New-Item -ItemType Directory -Force -Path $dayAtomFolder | Out-Null

  $noteFile = Join-Path $sourceFolder "${Day}_APPEND_ONLY_NOTES.md"
  $atomFile = Join-Path $dayAtomFolder "${Day}_NOTE_ATOM_CANDIDATES.jsonl"
  $manifest = Join-Path $dayAtomFolder "${Day}_ATOMIZATION_MANIFEST.md"
  $receipt = Join-Path $sourceFolder "${Day}_NOTE_ATOMIZATION_RECEIPT.md"

  $ts = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'
  $iso = (Get-Date).ToString("yyyy-MM-ddTHH:mm:sszzz")

  if (-not (Test-Path $noteFile)) {
    "# $Day Append-Only Notes`r`n" | Set-Content -Encoding UTF8 $noteFile
  }

  $entry = @"

---

# WRITE Notes Entry

Timestamp: $ts

## Content

$Content
"@

  $entry | Add-Content -Encoding UTF8 $noteFile

  if (Test-Path $atomFile) {
    Remove-Item $atomFile -Force
  }

  $files = Get-ChildItem $sourceFolder -File -Filter '*.md' | Sort-Object Name
  $atomCount = 0

  foreach ($file in $files) {
    $text = Get-Content $file.FullName -Raw
    $lines = $text -split "`r?`n"

    $currentHeading = 'Document'
    $buffer = New-Object System.Collections.Generic.List[string]

    foreach ($line in $lines) {
      if ($line -match '^\s{0,3}#{1,6}\s+(.+?)\s*$') {
        $contentBlock = ($buffer -join "`n").Trim()

        if (-not [string]::IsNullOrWhiteSpace($contentBlock)) {
          $atomCount++
          $atomId = ('{0}-ATOM-{1:D5}' -f $Day,$atomCount)

          $obj = [ordered]@{
            atom_id = $atomId
            day = $Day
            atom_status = 'candidate'
            atom_type = 'NOTE_ATOM_CANDIDATE'
            source_file = $file.FullName
            source_name = $file.Name
            source_heading = $currentHeading
            content = $contentBlock
            created_at = $iso
            governance = 'Candidate atom generated from daily markdown note. Review before promotion to canonical atom.'
          }

          ($obj | ConvertTo-Json -Compress) | Add-Content -Encoding UTF8 $atomFile
        }

        $buffer.Clear()
        $currentHeading = $matches[1]
      }
      else {
        $buffer.Add($line) | Out-Null
      }
    }

    $contentBlock = ($buffer -join "`n").Trim()

    if (-not [string]::IsNullOrWhiteSpace($contentBlock)) {
      $atomCount++
      $atomId = ('{0}-ATOM-{1:D5}' -f $Day,$atomCount)

      $obj = [ordered]@{
        atom_id = $atomId
        day = $Day
        atom_status = 'candidate'
        atom_type = 'NOTE_ATOM_CANDIDATE'
        source_file = $file.FullName
        source_name = $file.Name
        source_heading = $currentHeading
        content = $contentBlock
        created_at = $iso
        governance = 'Candidate atom generated from daily markdown note. Review before promotion to canonical atom.'
      }

      ($obj | ConvertTo-Json -Compress) | Add-Content -Encoding UTF8 $atomFile
    }
  }

  @"
# $Day Atomization Manifest

## Purpose

This manifest records first-pass atomization of $Day daily markdown notes into candidate note atoms.

## Source folder

$sourceFolder

## Common atom locker

$locker

## Day atom folder

$dayAtomFolder

## Atom candidate file

$atomFile

## Source files processed

$($files.Count)

## Candidate atoms generated

$atomCount

## Method

Each markdown note was split into candidate atoms by heading block.

These are candidate atoms, not canonical atoms.

## Governance status

- Candidate atoms require review before promotion.
- Source files remain authoritative witnesses.
- Atom IDs are local candidate IDs.
- Candidate atoms preserve source file and source heading.
- No claim is made that these atoms are fully normalized or final.

## Playbook vocabulary

ATOMIZE Notes = refresh this candidate atom surface.
CALL Notes = search this candidate atom surface.
READ Notes = use selected notes / atoms as the authority field for AI continuation.

## Working maxim

Daily notes are working memory.
Atoms are reusable system memory.
The locker preserves continuity.
"@ | Set-Content -Encoding UTF8 $manifest

  @"
# $Day Note Atomization Receipt

## Timestamp

$ts

## Act performed

Wrote a note and atomized $Day daily markdown notes into first-pass candidate note atoms.

## Source folder

$sourceFolder

## Note file

$noteFile

## Atom locker

$locker

## Day atom folder

$dayAtomFolder

## Atom candidate file

$atomFile

## Manifest

$manifest

## Source files processed

$($files.Count)

## Candidate atoms generated

$atomCount

## Status

WRITE plus candidate atomization complete.

## Governance note

These are candidate atoms, not canonical atoms.

Review is required before promotion to canonical AA atoms.

Source markdown notes remain authoritative witnesses unless and until promotion says otherwise.

This command writes and atomizes notes into candidate memory.

It does not publish, adjudicate, classify, legally validate, or promote candidate atoms into canonical records.

## Working maxim

The user writes meaning.
The system writes memory.

Every accepted note should be written and atomized in one ordinary user cycle.
"@ | Set-Content -Encoding UTF8 $receipt

  $noteItem = Get-Item $noteFile
  $atomItem = Get-Item $atomFile

  [pscustomobject]@{
    Status = 'WRITTEN_AND_ATOMIZED'
    Day = $Day
    NoteFile = $noteFile
    NoteLength = $noteItem.Length
    AtomFile = $atomFile
    AtomFileLength = $atomItem.Length
    Manifest = $manifest
    Receipt = $receipt
    SourceFilesProcessed = $files.Count
    CandidateAtomsGenerated = $atomCount
    LastWriteTime = $noteItem.LastWriteTime
  }
}
