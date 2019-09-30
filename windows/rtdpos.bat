@ECHO OFF
echo.
echo ===========================
echo RTD Update .po for en zh_CN
echo ===========================
echo.
echo --- Update .po: en zh_CN ---
echo.
sphinx-intl update -p _build/gettext -l en -l zh_CN
echo.
echo.
