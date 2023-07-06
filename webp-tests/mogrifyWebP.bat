@REM @echo off

setlocal enabledelayedexpansion

for %%x in (%*) do (
    magick mogrify -format webP -quality 80 -define webp:lossless=true "%%x"

    if exist "%%~dx%%~px%%~nx.webp" (
    del %%x
    )  
)
endlocal
@REM  magick mogrify -format webP -quality 80 -define webp:lossless=true -define webp:auto-filter=true -define webp:alpha-filtering=2 -define webp:method=6 *.*


pause