@echo off
:: ==========================================
:: Lanzador del Optimizador de Windows 11
:: ==========================================

echo Comprobando permisos de administrador...
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :RunOptimizer
) else (
    echo Solicitando permisos de administrador...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:RunOptimizer
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "OptimizerUI.ps1"
