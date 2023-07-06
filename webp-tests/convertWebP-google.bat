@echo off

for %%x in (%*) do (
    @REM "C:\webP\bin\cwebp.exe" -q 85 %%x -o "%%~dx%%~px%%~nx.webp"
    @REM "C:\webP\bin\cwebp.exe" %%x -lossless -m 6 -q 100 -f 20 -sharpness 1 -progress -o "%%~dx%%~px%%~nx.webp"
    "C:\webP\bin\cwebp.exe" %%x -jpeg_like -m 6 -q 100 -af -f 50 -sharpness 2 -sharp_yuv -progress -o "%%~dx%%~px%%~nx.webp"

    @REM if exist "%%~dx%%~px%%~nx.webp" (
    @REM del %%x
    @REM )  
)

@REM pause