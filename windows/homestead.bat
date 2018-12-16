@ECHO OFF

set tmpCwd=%cd%
REM set homesteadVagrant=/path/to/homestead

cd /d %homesteadVagrant% && vagrant %*
cd /d %tmpCwd%

set tmpCwd=
REM set homesteadVagrant=
