@echo off

for %%x in (%*) do (
    "C:\Program Files\ImageMagick-7.1.0-Q16-HDRI\magick.exe" "%%x" -quality 85 -define webp:lossless=true -define webp:auto-filter=true -define emulate-jpeg-size=true -define webp:method=6 "%%~dx%%~px%%~nx.webp"
    
    if exist "%%~dx%%~px%%~nx.webp" (
    del %%x
    )  
)

@REM pause