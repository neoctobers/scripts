@ECHO OFF
echo.
echo ==============
echo RTD Update .po
echo ==============
echo.
echo --- Update .po: zh_CN ---
echo.
sphinx-intl update -p _build/gettext -l zh_CN
