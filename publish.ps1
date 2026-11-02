param(
  [Parameter(Mandatory=$true)] [string]$GitHubUsername,
  [string]$RepoName = "ml-algorithms-portfolio"
)
$ErrorActionPreference = "Stop"
if (-not (Get-Command git -ErrorAction SilentlyContinue)) { throw "Git must be installed: https://git-scm.com/downloads" }
Set-Location $PSScriptRoot
if (-not (Test-Path '.git')) { git init; if ($LASTEXITCODE -ne 0) { throw "git init failed" } }
git branch -M main
if ($LASTEXITCODE -ne 0) { throw "Unable to set main branch" }
$remoteUrl = "https://github.com/$GitHubUsername/$RepoName.git"
$existingRemote = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) { git remote add origin $remoteUrl }
elseif ($existingRemote -ne $remoteUrl) { throw "Existing origin is $existingRemote; expected $remoteUrl. Review the remote before changing it." }
git add .
git diff --cached --quiet
if ($LASTEXITCODE -ne 0) {
  git commit -m "Add machine learning algorithm portfolio"
  if ($LASTEXITCODE -ne 0) { throw "Commit failed. Configure git user.name and user.email if prompted." }
}
git push -u origin main
if ($LASTEXITCODE -ne 0) { throw "Push failed. Confirm that repository exists and GitHub authentication is configured." }
Write-Host "Upload complete. Enable GitHub Pages: Settings > Pages > Deploy from a branch > main > /(root)" -ForegroundColor Green
Write-Host "Expected website: https://$GitHubUsername.github.io/$RepoName/"
