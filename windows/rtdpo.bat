@ECHO OFF
set langCode=%1
if "%langCode%" == "" (
    set langCode=zh_CN
)
echo.
echo =========================
echo RTD Update .po for %langCode%
echo =========================
echo.
echo --- Update .po: %langCode% ---
echo.
sphinx-intl update -p _build/gettext -l %langCode%
echo.
echo.
set langCode=
