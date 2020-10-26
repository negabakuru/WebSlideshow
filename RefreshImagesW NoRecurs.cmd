echo Writing file listing to images/image.js...
@echo off

:set encoding to UTF-8
chcp 65001

echo let imageNamesStr = ` > images/images.js
dir images /a-D /S /B >> images/images.js
echo ` >> images/images.js