@ECHO OFF
echo.
echo ========================================
echo Install Python Package with Douban Index
echo ======================================== %*
echo.
pip3 install -i https://pypi.douban.com/simple -U %*
echo.
echo.
