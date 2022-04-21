Write-Host " 🧼  Clean .\.venv " -ForegroundColor black -BackgroundColor Green
if(Test-Path .\.venv) {
    Remove-Item -Recurse -Force .\.venv
}

Write-Host " 🏃  Create .\.venv " -ForegroundColor black -BackgroundColor Green
python -m venv .venv

Write-Host " 🏃  Activate Virtual Envrionment " -ForegroundColor black -BackgroundColor Green
.\.venv\Scripts\Activate.ps1

Write-Host " 🏃  Install Dependencies " -ForegroundColor black -BackgroundColor Green
pip install -r requirements.txt
