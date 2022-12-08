@echo off
Setlocal enabledelayedexpansion
Set /p "Pattern=Nhap Ten Prefix Hien Tai Cua Anh: "
Set /p "Replace=Nhap Ten Prefix Can Thay Doi: "
For /r %%a in (*.jpg) Do (
    Set "File=%%~na"
    Set "Path=%%~a"
    Ren "!Path!" "!File:%Pattern%=%Replace%!.jpg"
)
For /r %%a in (*.png) Do (
    Set "File=%%~na"
    Set "Path=%%~a"
    Ren "!Path!" "!File:%Pattern%=%Replace%!.png"
)
For /r %%a in (*.jpeg) Do (
    Set "File=%%~na"
    Set "Path=%%~a"
    Ren "!Path!" "!File:%Pattern%=%Replace%!.jpeg"
)