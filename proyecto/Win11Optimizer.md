# ⚡ Win11 Optimizer

**Win11 Optimizer** es una suite de herramientas de automatización y *scripting* orientada a exprimir al máximo el rendimiento de sistemas operativos Windows 11. Diseñada para usuarios avanzados, *gamers* y desarrolladores que buscan un entorno limpio, rápido y libre de procesos innecesarios.

## 🎯 Objetivo del Proyecto

Windows 11 incluye por defecto muchos servicios en segundo plano, aplicaciones de telemetría y configuraciones visuales que, aunque atractivas, consumen valiosos recursos de CPU, memoria RAM y lectura de disco. El objetivo de este proyecto es proveer una utilidad de **un solo clic** capaz de deshabilitar la bloatware, automatizar rutinas de mantenimiento profundas y liberar recursos críticos.

## ⚙️ Características Técnicas

*   **Limpieza Profunda de Archivos (Temp/Cache)**: Algoritmos de purga automatizada para directorios de Windows Update, archivos temporales del sistema, cachés de navegación y *dumps* de memoria residuales.
*   **Gestión Inteligente de Arranque (Startup)**: Control y detención de aplicaciones y servicios que se inyectan en el inicio de sesión, reduciendo drásticamente el tiempo de arranque (Boot Time) y aligerando la carga de la memoria inicial.
*   **Modificación de Políticas de Sistema (Registry/Settings)**:
    *   Desactivación de recolección de datos y telemetría no esencial.
    *   Optimización de la prioridad del procesador para tareas en primer plano (ideal para desarrollo pesado o videojuegos).
    *   Ajuste fino de efectos visuales (DWM) para minimizar el impacto en la GPU sin perder la fluidez de la interfaz moderna.

## 🛠️ Tecnologías Usadas

*   **PowerShell & Batch Scripting**: Scripts profundos ejecutados a nivel de administrador interactuando directamente con WMI (Windows Management Instrumentation) y el Registro de Windows.
*   **Automatización de Tareas (Task Scheduler)**: Reglas programadas para ejecutar limpiezas silenciosas.
*   **Políticas de Seguridad Cero-Riesgo**: El script genera puntos de restauración automáticamente antes de modificar cualquier entrada sensible del sistema.

## 🚀 Cómo usarlo

1. Clona o descarga el archivo `.ps1` / `.bat` desde los *Releases* de este repositorio.
2. Abre PowerShell o la Terminal como **Administrador**.
3. Ejecuta el script principal. *Nota: Es posible que necesites habilitar la política de ejecución local con `Set-ExecutionPolicy RemoteSigned`.*
4. Selecciona el perfil de optimización (Gaming, Trabajo, o Extremo).

---
*Scripting de alto rendimiento por Guillear14*
