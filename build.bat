REM Unit tests
dnx  -p tests\SampleLib.Tests test
if not "%errorlevel%"=="0" goto failure

REM Package
dnu pack "src\SampleLib"
if not "%errorlevel%"=="0" goto failure

:success
exit 0

:failure
exit -1:success