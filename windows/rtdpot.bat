@ECHO OFF
echo.
echo ===============
echo RTD Update .pot
echo ===============
echo.
REM echo --- Remove OLD .pot ---
REM echo.
REM rm _build/gettext -r
REM echo.
echo --- Make NEW .pot ---
echo.
make gettext
echo.
echo.
