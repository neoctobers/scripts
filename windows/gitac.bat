@ECHO OFF
set commitString=%*
if "%commitString%" == "" (
    echo.
    echo A param string is needed.
) else (
    echo.
    echo ==================
    echo Git Add and Commit
    echo ================== %commitString%
    echo.
    git add .
    git commit -m "%*"
)
set commitString=
echo.
echo.
