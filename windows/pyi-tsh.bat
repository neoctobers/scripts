@ECHO OFF
echo.
echo ==========================================
echo Install Python Package with QsingHua Index
echo ========================================== %*
echo.
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple/ -U %*
echo.
echo.
