echo let imageNamesStr = ` > images/images.js

setlocal EnableDelayedExpansion
for /L %%n in (1 1 500) do if "!__cd__:~%%n,1!" neq "" set /a "len=%%n+7+1"
:+7 is for stripping 'images' from the path
setlocal DisableDelayedExpansion

for /F "TOKENS=*" %%g in ('DIR /a-D /S /B images') do (
  set "absPath=%%g"
  setlocal EnableDelayedExpansion
  set "absPath=!absPath:\=/!"
  set "relPath=!absPath:~%len%!"
  echo(!relPath! >> images/images.js
  endlocal
)

echo ` >> images/images.js