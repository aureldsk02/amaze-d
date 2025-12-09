@echo off
:: Set code page to UTF-8 for emoji support
chcp 65001 > nul

cls
echo [36m[1m
echo     ===========================================================
echo     =                                                         =
echo     =     🐜 -> 🏠 -> 🏠 -> 🏠 -> 🎯                          =
echo     =                                                         =
echo     =          AMAZE-D: Where Ants Meet Algorithms            =
echo     =                   DEMO SHOWCASE                         =
echo     =                                                         =
echo     ===========================================================
echo [0m

timeout /t 1 /nobreak > nul

echo [33m[1m🎬 Demo 1: Simple Path[0m
echo [36mDescription: 1 ant, direct connection[0m
echo.
timeout /t 1 /nobreak > nul

if exist amaze-d.exe (
    amaze-d.exe -v < tests\test_simple.txt
) else (
    echo [31mError: amaze-d.exe not found. Please compile the project first (e.g., using 'make').[0m
    echo [31mNote: Ensure you are in the project root directory.[0m
    goto :end
)
echo.
pause
cls

echo [33m[1m🎬 Demo 2: Linear Path with Multiple Ants[0m
echo [36mDescription: 3 ants navigating through 2 rooms[0m
echo.
timeout /t 1 /nobreak > nul
if exist amaze-d.exe (
    amaze-d.exe -v < tests\test.txt
)
echo.
pause
cls

echo [33m[1m🎬 Demo 3: Longer Linear Path[0m
echo [36mDescription: 4 ants through 5 rooms[0m
echo.
timeout /t 1 /nobreak > nul
if exist amaze-d.exe (
    amaze-d.exe -v < tests\test2.txt
)
echo.
pause
cls

echo [33m[1m🎬 Demo 4: Complex Graph[0m
echo [36mDescription: 5 ants in a graph with multiple paths[0m
echo.
timeout /t 1 /nobreak > nul
if exist amaze-d.exe (
    amaze-d.exe -v < tests\test3.txt
)
echo.
pause
cls


echo [32m[1m
echo     ===========================================================
echo     =                                                         =
echo     =                  ✨ DEMO COMPLETE ✨                    =
echo     =                                                         =
echo     =              Thank you for watching!                    =
echo     =                                                         =
echo     =     Try it yourself with: amaze-d.exe -v ^< your_file.txt   =
echo     =                                                         =
echo     ===========================================================
echo [0m

echo [36mAvailable options:[0m
echo   [32m-v, --verbose[0m    Show detailed information with colors
echo   [32m-s, --stats[0m      Show statistics
echo   [32m-a, --animate[0m    Animate simulation (slower)
echo   [32m--no-color[0m       Disable colors
echo   [32m--no-emoji[0m       Disable emojis
echo.

:end
pause
