@ECHO OFF
set proxyHost=%2
if "%proxyHost%" == "" (
    set proxyHost=127.0.0.1
)

set proxyPort=%1
if "%proxyPort%" == "" (
    echo.
    echo =============================
    echo Unset http/https proxy in cmd
    echo =============================
    echo.
    echo.
    set http_proxy=
    set https_proxy=
    curl https://api.myip.com/
) else (
    echo.
    echo ===========================
    echo Set http/https proxy in cmd
    echo =========================== http://%proxyHost%:%proxyPort%
    echo.
    echo.
    set http_proxy=http://%proxyHost%:%proxyPort%
    set https_proxy=http://%proxyHost%:%proxyPort%
    curl https://api.myip.com/
)

set proxyPort=
set proxyHost=
echo.
echo.
