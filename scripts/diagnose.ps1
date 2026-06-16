# PowerShell诊断脚本 для Universal Dev Template
Write-Host " Diagnosing Universal Dev Template Infrastructure (PowerShell)..." -ForegroundColor Cyan
$ERRORS = 0

# Проверка Git
if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "✅ Git found" -ForegroundColor Green
} else {
    Write-Host "❌ Git is required!" -ForegroundColor Red
    exit 1
}

# Проверка Git Hooks
$hooksPath = git config core.hooksPath
if ($hooksPath -eq ".githooks") {
    Write-Host "✅ Git hooks configured correctly" -ForegroundColor Green
} else {
    Write-Host "⚠️  Git hooks NOT configured! Run: git config core.hooksPath .githooks" -ForegroundColor Yellow
    $ERRORS++
}

# Проверка ключевых файлов
$files = @(".ai-instructions.md", "PROJECT_STATUS.md", "docs/architecture.md")
foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "✅ $file exists" -ForegroundColor Green
    } else {
        Write-Host "⚠️  $file missing" -ForegroundColor Yellow
    }
}

# Проверка исполняемости скриптов
$scripts = @("scripts/validate.sh", "scripts/update_status.sh", "scripts/ai-context-loader.sh")
foreach ($script in $scripts) {
    if (Test-Path $script) {
        Write-Host "✅ $script exists" -ForegroundColor Green
    } else {
        Write-Host "❌ $script not found!" -ForegroundColor Red
        $ERRORS++
    }
}

# Проверка Python
if (Get-Command python3 -ErrorAction SilentlyContinue) {
    Write-Host "✅ Python3 available" -ForegroundColor Green
} else {
    Write-Host "⚠️  Python3 missing" -ForegroundColor Yellow
}

Write-Host ""
if ($ERRORS -eq 0) {
    Write-Host "🎉 Infrastructure is HEALTHY. Ready to code!" -ForegroundColor Green
} else {
    Write-Host "🛑 Found $ERRORS issues." -ForegroundColor Red
    exit 1
}
