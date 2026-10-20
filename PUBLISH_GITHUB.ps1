# Ascendant-Product — documentation-only initial GitHub publication.
# Run from the project folder, with Git and GitHub CLI installed and authenticated.
$ErrorActionPreference = 'Stop'
$target = 'D:\source\Cleancode_Consulting\Useless-Product\Ascendant-Product'
$repo = 'xulongjun/Ascendant-Product'
if (-not (Test-Path -LiteralPath $target -PathType Container)) { throw "Missing project folder: $target" }
Set-Location -LiteralPath $target
if (-not (Test-Path 'docs/PRODUCT.md') -or -not (Test-Path 'AGENTS.md')) { throw 'Documentation missing; abort.' }
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { throw 'git not installed.' }
if (-not (Get-Command gh -ErrorAction SilentlyContinue)) { throw 'GitHub CLI (gh) not installed.' }
& gh auth status
if ($LASTEXITCODE -ne 0) { throw 'Authenticate using gh auth login.' }
$login = (& gh api user --jq '.login').Trim()
if ($LASTEXITCODE -ne 0 -or $login -ne 'xulongjun') { throw "Expected GitHub owner xulongjun; authenticated as $login" }
& gh repo view $repo --json name 2>$null | Out-Null
if ($LASTEXITCODE -eq 0) { throw "Repository $repo already exists; refusing to alter it automatically." }
if (Test-Path '.git') { throw 'Git repository already initialized. Inspect before continuing.' }
# Confirm remote creation after carefully checking scope.
$answer = Read-Host "Create PRIVATE repository $repo and push documents? Type YES"
if ($answer -cne 'YES') { throw 'Cancelled by user.' }
& git init -b main
if ($LASTEXITCODE -ne 0) { throw 'git init failed' }
& git add -- README.md AGENTS.md CURSOR_PHASE1_INSTRUCTIONS.md PUBLISH_GITHUB.ps1 docs .gitignore
if ($LASTEXITCODE -ne 0) { throw 'git add failed' }
& git commit -m 'docs: initialize Ascendant-Product charter and backlog'
if ($LASTEXITCODE -ne 0) { throw 'git commit failed. Check git user.name and user.email.' }
& gh repo create $repo --private --source . --remote origin --push
if ($LASTEXITCODE -ne 0) { throw 'GitHub creation or push failed. Review gh repo view and git remote before retrying.' }
Write-Host "Published: https://github.com/$repo"
