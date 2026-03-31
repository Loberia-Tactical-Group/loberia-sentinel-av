# 🛡️ Loberia Sentinel AV
> **Elite Malware Detection & Active Response System**

![Loberia Banner](https://img.shields.io/badge/Loberia--Tactical--Group-Sentinel--AV-red?style=for-the-badge&logo=target)
![License](https://img.shields.io/github/license/Loberia-Tactical-Group/loberia-sentinel-av?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Deployment--Ready-green?style=for-the-badge)

Loberia Sentinel AV is a lightweight, tactical security watchdog designed to identify, isolate, and neutralize threats across Windows and Linux environments.

---

## 🚀 Key Capabilities

* **⚡ Active Process Watchdog:** Real-time monitoring of running processes to kill known threats instantly.
* **📂 Signature Scanning:** MD5-based file integrity checks against malware databases.
* **🛡️ Active Quarantine:** Strips execution permissions and isolates infected files.
* **🌐 Cross-Platform:** Dedicated tactical modules for **Windows (PowerShell)** and **Linux (Bash)**.

---

## 🛠️ Deployment & Usage

### 🟦 Windows Shield
To activate the Windows protection module:
1. Open PowerShell as Administrator.
2. Navigate to the `Windows/` directory.
3. Execute:
   ```powershell
   .\loberia-shield.ps1
