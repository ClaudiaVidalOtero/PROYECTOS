@echo off
REM Karate Competition Manager - Startup Script
echo 🚀 Starting Karate Competition Manager...
echo.

REM Activate virtual environment
echo 📦 Activating virtual environment...
call .\.venv\Scripts\activate.bat
if %errorlevel% neq 0 (
    echo ❌ Error: Could not activate virtual environment
    echo Make sure the virtual environment exists in .venv folder
    pause
    exit /b 1
)

REM Start the Flask application
echo 🌐 Starting Flask application...
echo.
echo 📱 App will be available at: http://127.0.0.1:5000
echo.
echo Press Ctrl+C to stop the application
echo.

python app.py

REM Deactivate virtual environment when done
call deactivate