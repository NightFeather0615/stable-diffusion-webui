@echo off

set COMMANDLINE_ARGS=
set PYTHON=
set GIT=
set VENV_DIR=
set useXFormers=null
set useLowVram=null

:askUseXFormers

set /p useXFormers=Use xformers to increase your it/s (Y/N)?: 

if %useXFormers% == y (
  set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% --xformers
  goto :endAskUseXFormers
) else if %useXFormers% == Y (
  set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% --xformers
  goto :endAskUseXFormers
) else if %useXFormers% == n (
  goto :endAskUseXFormers
) else if %useXFormers% == N (
  goto :endAskUseXFormers
)

goto :askUseXFormers

:endAskUseXFormers

:askUseLowVram

set /p useLowVram=Use Low VRAM Mode to generate high res. image (Y/N)?: 

if %useLowVram% == y (
  set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% --lowvram
  goto :endAskUseLowVram
) else if %useLowVram% == Y (
  set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% --lowvram
  goto :endAskUseLowVram
) else if %useLowVram% == n (
  goto :endAskUseLowVram
) else if %useLowVram% == N (
  goto :endAskUseLowVram
)

goto :askUseLowVram

:endAskUseLowVram


call webui.bat