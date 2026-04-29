@echo off
title Reparacion y Subida a GitHub
cls

echo ==================================================
echo   1. Limpiando el error de memoria de Git...
echo ==================================================
:: Esto borra el historial atascado localmente para que olvide el archivo de 122MB
rmdir /s /q .git

echo.
echo ==================================================
echo   2. Creando reglas de ignorado (.gitignore)...
echo ==================================================
:: Le decimos a Git que no suba carpetas pesadas ni programas
echo jdk17_dir/> .gitignore
echo gradle-8.4/>> .gitignore
echo .gradle/>> .gitignore
echo build/>> .gitignore
echo bin/>> .gitignore

echo.
echo ==================================================
echo   3. Reiniciando Git y conectando a GitHub...
echo ==================================================
git init
git branch -M main
git remote add origin https://github.com/Guillear14/Win11-Optimizer.git

echo.
echo ==================================================
echo   4. Guardando el mod (sin la basura pesada)...
echo ==================================================
git add .
git commit -m "Subida inicial limpia (sin archivos pesados)"

echo.
echo ==================================================
echo   5. Subiendo a GitHub...
echo ==================================================
:: Usamos -f para forzar la subida limpia
git push -u origin main -f

echo.
echo ==================================================
echo   ¡Problema arreglado y mod subido con exito!
echo ==================================================
echo.
pause