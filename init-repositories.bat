@echo off
REM Update external git repositories needed to build the project
git submodule update --init --recursive

REM Download oxygen theme for windows
SET ICONS_THEME="oxygen"
SET ICONS_THEME_GIT="oxygen-icons-png.git"

IF EXIST %ICONS_THEME% GOTO HAVE_THEME
git clone https://github.com/pasnox/oxygen-icons-png.git %ICONS_THEME_GIT%
move %ICONS_THEME_GIT%\%ICONS_THEME% .
rmdir /S /Q %ICONS_THEME_GIT%

:HAVE_THEME
@echo on