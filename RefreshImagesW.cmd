echo Writing file listing to images/image.js...
@echo off
echo let imageNamesStr = ` > images/images.js

setlocal EnableDelayedExpansion
for /L %%n in (1 1 500) do if "!__cd__:~%%n,1!" neq "" set /a "len=%%n+7+1"
:+7 is for stripping 'images' from the path
setlocal DisableDelayedExpansion

:set encoding to UTF-8
chcp 65001

for /F "TOKENS=*" %%g in ('DIR /a-D /S /B images') do (
  set "absPath=%%g"
  setlocal EnableDelayedExpansion
  set "absPath=!absPath:\=/!"
  set "relPath=!absPath:~%len%!"
  echo(!relPath! >> images/images.js
  endlocal
)

echo ` >> images/images.js