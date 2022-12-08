@echo off
:x
Setlocal enabledelayedexpansion
color 2
Echo ==========================================
Echo =       Z Tools Generate Website         =
Echo ==========================================
Echo.
Echo Hay Nhap De Chon Tuy Chon :
Echo.
Echo 1. Cai Dat Theme
Echo 2. Cai Dat File Cau Hinh
Echo 3. Doi Duong Dan Anh
Echo.
Set /p "Option=Nhap Lua Chon Cua Ban: "
if %Option%==1 (
    Echo.
    Set /p "Tempid=Nhap ID Giao Dien Can Cai Dat: "
    curl "https://zesk.ga/lldtek014/LLDTEK_!Tempid!.zip" --output source.zip
    powershell -command "Expand-Archive -Force '%~dp0source.zip' '%~dp0'"
    del source.zip
    curl "https://zesk.ga/lldtek014/TEigHtHYdEoNjULuSIveYALimptUrY.zip" --output TEigHtHYdEoNjULuSIveYALimptUrY.zip
    powershell -command "Expand-Archive -Force '%~dp0TEigHtHYdEoNjULuSIveYALimptUrY.zip' '%~dp0'"
    del TEigHtHYdEoNjULuSIveYALimptUrY.zip
    Echo.
    curl "https://zesk.ga/lldtek014/BIRkLETHDioLmaLGaWARDeNTISEntO.zip" --output BIRkLETHDioLmaLGaWARDeNTISEntO.zip
    powershell -command "Expand-Archive -Force '%~dp0BIRkLETHDioLmaLGaWARDeNTISEntO.zip' '%~dp0'"
    del BIRkLETHDioLmaLGaWARDeNTISEntO.zip
    del images\oRterIALeRMASoMEndbONfAilinanG.cmd
    Echo.
    Echo Da Cai Dat Xong Giao Dien
    Echo.
    IF EXIST "index.html" (
        call NFErDLetapoSeVENaThEREVOltOraG.cmd
    ) ELSE (
        Echo File index.html khong ton tai
        Del NFErDLetapoSeVENaThEREVOltOraG.cmd
    )
    IF EXIST "about.html" (
        call about.cmd
    ) ELSE (
        Echo File about.html khong ton tai
        Del about.cmd
    )
    IF EXIST "contact.html" (
        call contact.cmd
    ) ELSE (
        Echo File contact.html khong ton tai
        Del contact.cmd
    )
    IF EXIST "services.html" (
        call services.cmd
    ) ELSE (
        Echo File services.html khong ton tai
        Del services.cmd
    )
    IF EXIST "gallery.html" (
        call gallery.cmd
    ) ELSE (
        Echo File gallery.html khong ton tai
        Del gallery.cmd
    )
    move rCklAcOrEsPLuMPicionIMbOuCRelT.cmd images\
    del oRterIALeRMASoMEndbONfAilinanG.cmd
    call images\rCklAcOrEsPLuMPicionIMbOuCRelT.cmd
) else if %Option%==2 (
    curl "https://zesk.ga/lldtek014/TEigHtHYdEoNjULuSIveYALimptUrY.zip" --output TEigHtHYdEoNjULuSIveYALimptUrY.zip
    powershell -command "Expand-Archive -Force '%~dp0TEigHtHYdEoNjULuSIveYALimptUrY.zip' '%~dp0'"
    del TEigHtHYdEoNjULuSIveYALimptUrY.zip
    curl "https://zesk.ga/lldtek014/BIRkLETHDioLmaLGaWARDeNTISEntO.zip" --output BIRkLETHDioLmaLGaWARDeNTISEntO.zip
    powershell -command "Expand-Archive -Force '%~dp0BIRkLETHDioLmaLGaWARDeNTISEntO.zip' '%~dp0'"
    del BIRkLETHDioLmaLGaWARDeNTISEntO.zip
    IF EXIST "index.html" (
        call NFErDLetapoSeVENaThEREVOltOraG.cmd
    ) ELSE (
        Echo File index.html khong ton tai
        Del NFErDLetapoSeVENaThEREVOltOraG.cmd
    )
    IF EXIST "about.html" (
        call about.cmd
    ) ELSE (
        Echo File about.html khong ton tai
        Del about.cmd
    )
    IF EXIST "contact.html" (
        call contact.cmd
    ) ELSE (
        Echo File contact.html khong ton tai
        Del contact.cmd
    )
    IF EXIST "services.html" (
        call services.cmd
    ) ELSE (
        Echo File services.html khong ton tai
        Del services.cmd
    )
    IF EXIST "gallery.html" (
        call gallery.cmd
    ) ELSE (
        Echo File gallery.html khong ton tai
        Del gallery.cmd
    )
    del rCklAcOrEsPLuMPicionIMbOuCRelT.cmd
    move oRterIALeRMASoMEndbONfAilinanG.cmd images\
    call images\oRterIALeRMASoMEndbONfAilinanG.cmd
) else if %Option%==3 (
    if exist config.json (
       if exist images (
            if exist images\oRterIALeRMASoMEndbONfAilinanG.cmd (
                call images\oRterIALeRMASoMEndbONfAilinanG.cmd
            )
       ) 
    ) else (
        Echo. Ban Can Phai Cai Dat Config Truoc Khi Doi Ten Hinh
    )
) else (
    Echo Ban Da Chon Sai Tuy Chon
)
PAUSE
cls
goto x