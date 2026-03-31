#!/bin/bash
# Loberia Tactical Group - Sentinel AV: Linux Watchdog (v1.0)
# Objective: Active process monitoring and threat neutralization.

echo "--- LOBERIA SENTINEL AV: LINUX WATCHDOG ACTIVE ---"

# Lista de procesos sospechosos a vigilar
BLACK-LIST=("xmrig" "nmap" "masscan" "netcat")

while true; do
    for target in "${BLACK-LIST[@]}"; do
        # Buscamos si el proceso está corriendo
        PID=$(pgrep -x "$target")
        
        if [ ! -z "$PID" ]; then
            echo "[!!!] THREAT DETECTED: $target (PID: $PID)"
            echo "[+] Neutralizing threat..."
            kill -9 $PID
            echo "[OK] $target has been terminated."
            
            # Registrar el evento en el log de Loberia
            echo "$(date) - Neutralized: $target" >> /var/log/loberia_sentinel.log
        fi
    done
    
    # Pausa táctica de 10 segundos
    sleep 10
done
