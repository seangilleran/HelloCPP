@echo off

set outputExe=HelloCPP
set files=..\source\main.cpp
set libs=

set buildDir=%~dp0..\build
if not exist %buildDir% mkdir %buildDir%
pushd %buildDir%

set objDir=.\obj\
if not exist %objDir% mkdir %objDir%

set compileFlags=/Zi /FC /EHsc /std:c++17 /Fo%objDir% /Fe%outputExe%
set linkFlags=/link /SUBSYSTEM:CONSOLE

cl %compileFlags% %files% %libs% %linkFlags%

rem Copy dependencies...
rem xcopy /y ..\external\{}.dll .

popd