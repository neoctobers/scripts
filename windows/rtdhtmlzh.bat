@ECHO OFF
echo.
echo ===========
echo RTD Preview
echo ===========
echo.
echo --- Clear html ---
echo.
rm _build/html -r
echo.
echo --- HTML: zh_CN ---
echo.
sphinx-build -D language=zh_CN . _build/html/zh_CN
echo.
echo --- All Done ---
echo.
echo PREVIEW: _build/html/zh_CN/index.html
start /min "" "_build/html/zh_CN/index.html"
