@ECHO OFF
set langCode=%1
if "%langCode%" == "" (
    echo.
    echo No param provided.
    echo.
    echo.
) else (
    echo.
    echo =========================================
    echo RTD: Make html and preview only in %langCode%
    echo =========================================
    echo.
    echo --- Update .po: %langCode% ---
    echo.
    sphinx-intl update -p _build/gettext -l %langCode%
    echo.
    echo --- Clear html ---
    echo.
    rm _build/html -r
    echo.
    echo --- HTML: %langCode% ---
    echo.
    sphinx-build -D language=%langCode% . _build/html/%langCode%
    echo.
    echo --- Done ---
    echo.
    echo PREVIEW: _build/html/%langCode%/index.html
    start /min "" "_build/html/%langCode%/index.html"
    echo.
)
set langCode=
