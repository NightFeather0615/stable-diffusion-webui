@echo off

set useLowVram=null

:askUseLowVram

set /p useLowVram=Use Low VRAM Mode to generate high res. image (Y/N)?: 

if %useLowVram% == y (
  set COMMANDLINE_ARGS=--lowvram
  goto :endAskUseLowVram
) else if %useLowVram% == Y (
  set COMMANDLINE_ARGS=--lowvram
  goto :endAskUseLowVram
) else if %useLowVram% == n (
  set COMMANDLINE_ARGS=
  goto :endAskUseLowVram
) else if %useLowVram% == N (
  set COMMANDLINE_ARGS=
  goto :endAskUseLowVram
) else (
  goto :askUseLowVram
)

:endAskUseLowVram

set PYTHON=
set GIT=
set VENV_DIR=

call webui.bat