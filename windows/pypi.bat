@ECHO OFF
echo.
echo ======================
echo PyPI: sdist and upload
echo ======================
echo.
rm dist -r
rm build -r
rm *.egg-info -r
py setup.py sdist bdist_wheel && twine upload dist/*
echo.
echo.
