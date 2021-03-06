Write-Host " ๐งผ  Clean .\.venv " -ForegroundColor black -BackgroundColor Green
if(Test-Path .\.venv) {
    Remove-Item -Recurse -Force .\.venv
}

Write-Host " ๐  Create .\.venv " -ForegroundColor black -BackgroundColor Green
python -m venv .venv

Write-Host " ๐  Activate Virtual Envrionment " -ForegroundColor black -BackgroundColor Green
.\.venv\Scripts\Activate.ps1

Write-Host " ๐  Install Dependencies " -ForegroundColor black -BackgroundColor Green
pip install -r requirements.txt
