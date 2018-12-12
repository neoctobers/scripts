@ECHO OFF
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
    echo.
    echo.
) else (
    echo.
    echo ===========================
    echo Set http/https proxy in cmd
    echo ===========================
    echo.
    echo.
    set http_proxy=http://127.0.0.1:%proxyPort%
    set https_proxy=http://127.0.0.1:%proxyPort%
    curl https://api.myip.com/
    echo.
    echo.
)
set proxyPort=
