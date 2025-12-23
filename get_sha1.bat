@echo off
echo Getting SHA-1 fingerprint for debug keystore...
echo.

cd /d "%USERPROFILE%\.android"

if not exist debug.keystore (
    echo Debug keystore not found!
    echo Please run your Flutter app at least once to generate it.
    pause
    exit /b
)

echo Found debug keystore. Extracting SHA-1...
echo.
echo ============================================
"%JAVA_HOME%\bin\keytool" -list -v -keystore debug.keystore -alias androiddebugkey -storepass android -keypass android | findstr "SHA1"
echo ============================================
echo.
echo Copy the SHA-1 value above and add it to:
echo Firebase Console ^> Project Settings ^> Your App ^> Add Fingerprint
echo.
pause
