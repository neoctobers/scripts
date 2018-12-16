@ECHO OFF
echo.
echo ===========
echo RTD Preview
echo ===========
echo.
echo --- Update .po: zh_CN ---
echo.
sphinx-intl update -p _build/gettext -l zh_CN
echo.
echo --- Clear html ---
echo.
rm _build/html -r
echo.
echo --- HTML: en ---
echo.
sphinx-build -D language=en . _build/html/en
echo.
echo --- HTML: zh_CN ---
echo.
sphinx-build -D language=zh_CN . _build/html/zh_CN
echo.
echo --- All Done ---
echo.
echo PREVIEW: _build/html/en/index.html
start /min "" "_build/html/en/index.html"
