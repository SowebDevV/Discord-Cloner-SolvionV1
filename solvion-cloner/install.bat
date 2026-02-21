@echo off
chcp 65001 >nul
title Solvion Cloner - Setup

echo.
echo  =========================================================
echo   SOLVION CLONER  ^|  Setup  ^|  by Soweb
echo  =========================================================
echo.

python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo  [~] Python non detecte. Installation...
    winget install --id Python.Python.3.12 --silent --accept-source-agreements --accept-package-agreements >nul 2>&1
    if %errorlevel% neq 0 (
        echo  [~] winget indisponible, telechargement manuel...
        powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.12.0/python-3.12.0-amd64.exe' -OutFile '%TEMP%\py.exe'"
        "%TEMP%\py.exe" /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
        del "%TEMP%\py.exe" >nul 2>&1
    )
    python --version >nul 2>&1
    if %errorlevel% neq 0 (
        echo  [!] Echec. Installez Python manuellement : https://www.python.org/downloads/
        pause & exit /b 1
    )
    echo  [OK] Python installe.
) else (
    for /f "tokens=*" %%i in ('python --version 2^>^&1') do echo  [OK] %%i
)

echo  [~] Installation des dependances...
python -m pip install --upgrade pip --quiet
python -m pip install -r requirements.txt --quiet

if %errorlevel% neq 0 (
    echo  [!] Erreur lors de l'installation. Verifiez votre connexion.
    pause & exit /b 1
)

echo  [OK] Pret. Lancement...
echo.
timeout /t 1 /nobreak >nul
python solvion_cloner.py
if %errorlevel% neq 0 ( echo. & echo  [!] Erreur a l'execution. & pause )
