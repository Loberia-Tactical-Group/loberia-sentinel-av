# Loberia Tactical Group - Sentinel AV: Windows Shield (v1.0)
# Description: Active process monitoring and system integrity watchdog.

Write-Host "--- LOBERIA SENTINEL AV: SHIELD ACTIVATED ---" -ForegroundColor Cyan

# 1. Lista de procesos prohibidos (Ejemplo: miners de criptomonedas o herramientas de hacking)
$ForbiddenProcesses = @("xmrig", "mimikatz", "pypykatz")

Write-Host "[+] Initializing Process Watchdog..." -ForegroundColor Green

while($true) {
    $RunningProcesses = Get-Process
    foreach ($proc in $RunningProcesses) {
        if ($ForbiddenProcesses -contains $proc.Name) {
            Write-Host "[!!!] THREAT DETECTED: $($proc.Name) is running!" -ForegroundColor Red
            Stop-Process -Name $proc.Name -Force
            Write-Host "[OK] Threat neutralized and isolated." -ForegroundColor Yellow
        }
    }
    
    # Pausa táctica de 5 segundos para no consumir CPU
    Start-Sleep -Seconds 5
}
