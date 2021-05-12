@echo off

set scriptsDir=%~dp0
cd /d %scriptsDir%..

rem set VSCMD_DEBUG=1
call "F:\VS\2019\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

set path=%scriptsDir%;%path%;
set INCLUDE=%scriptsDir%;%INCLUDE%
set LIB=%scriptsDir%;%LIB%