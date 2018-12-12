@ECHO OFF
echo.
echo ===============
echo RTD Update .pot
echo ===============
echo.
echo --- Remove OLD .pot ---
echo.
rm _build/gettext -r
echo.
echo --- Make NEW .pot ---
echo.
make gettext
