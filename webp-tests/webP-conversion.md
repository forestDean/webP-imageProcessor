Building on the suggestion by @johnrellis and the work by @MisterMagoo with the Google WebP Tools...

If anyone is interested in using ImageMagick, you will find there a wealth of processing options that are not available in the precompiled Google WebP Tools. As I already have it installed to use LR/Mogrify export plugin, it seemed a prefereable choice.

https://imagemagick.org/script/webp.php

Installation is a similar process: 
- Lightroom Exports Post-Processing panel is used to Open in Other Application, your path should be similar to: 
    C:\webP\convertWebP.bat

    The .bat looks like this for production:

    @echo off

    for %%x in (%*) do (
        "C:\Program Files\ImageMagick\magick.exe" "%%x" -quality 60 -define webp:lossless=true "%%~dx%%~px%%~nx.webp"
    )

    @REM pause

    The .bat looks like this for troubleshooting:

    @REM @echo off

    for %%x in (%*) do (
        "C:\Program Files\ImageMagick\magick.exe" "%%x" -quality 60 -define webp:lossless=true "%%~dx%%~px%%~nx.webp"
    )

    pause

Please note, as previously mentioned ...by the time the webP is created, the original export file has been written to the LightRoom Catalog. Deleting it with the .bat command will leave a 'lost file' in your system. You are much better off exporting to a webP folder, then removing 'original' export files from there. This does NOT apply to the Google WebP Tools method. A bit of a trade-off for the increased conversion control.