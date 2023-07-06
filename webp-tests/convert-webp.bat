for file in *; do
    magick "$file" -quality 85 -define webp:lossless=true "${file%.*}.webp"
@REM done
pause

magick 20190130_john-walton_forest-of-dean_003e.jpg -quality 85 -define webp:lossless=true wizard.webp
magick 20190130_john-walton_forest-of-dean_003e-2.jpg -quality 85 -define webp:lossless=true -define webp:auto-filter=true wizard2.webp
magick wizard.jpg -quality 85 -define webp:lossless=true -define webp:auto-filter=true wizard.webp

magick wizard.jpg -quality 85 -define webp:lossless=true -define webp:auto-filter=true wizard.webp


@echo off

set source_directory=C:\Path\to\source\directory
set output_directory=C:\Path\to\output\directory
set quality=85
set lossless=true
set auto_filter=true

for %%F in ("%source_directory%\*.jpg") do (
    magick "%%F" -quality %quality% -define webp:lossless=%lossless% -define webp:auto-filter=%auto_filter% "%output_directory%\%%~nF.webp"
)



@echo off

set source_directory=C:\Path\to\source\directory
set output_directory=C:\Path\to\output\directory

for %%F in ("%source_directory%\*") do (
    magick "%%F" -quality 85 -define webp:lossless=true -define webp:auto-filter=true "%output_directory%\%%~nF.webp"
)

@echo off

@REM set source_directory=C:\Path\to\source\directory
@REM set output_directory=C:\Path\to\output\directory

for %%F in (%*) do (
    magick "%%F" -quality 85 -define webp:lossless=true -define webp:auto-filter=true "%%~nF.webp"
)


magick.exe 20190130_john-walton_forest-of-dean_003e.jpg -quality 85 -define webp:lossless=true -define webp:auto-filter=true wizard.webp

magick.exe: unable to open image *: Permission denied @ error/blob.c/OpenBlob/3570.

@REM THIS WORKS
@REM @echo off

for %%x in (%*) do (
    "C:\Program Files\ImageMagick-7.1.0-Q16-HDRI\magick" "%%x" -quality 85 -define webp:lossless=true -define webp:auto-filter=true "%%~dx%%~px%%~nx.webp"
)


20221122_john-walton_forest-of-dean_025e.jpg
magick 20221122_john-walton_forest-of-dean_025e.jpg -quality 50 -define webp:lossless=true wizard.webp

magick mogrify -format webP -path ~/temp/WebP/ *.*

@REM THIS WORKS
magick mogrify -format webP *.*

magick mogrify -format webP -quality 80 -define webp:lossless=true -path ~/Pictures/WebP/ *.jpg
magick mogrify -format webP -quality 80 -define webp:lossless=true -define webp:auto-filter=true -define webp:alpha-filtering=2 -define webp:method=6