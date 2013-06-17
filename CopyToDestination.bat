@echo off
echo ==============================================================================
echo Se copiarán los archivos de macros personales y de librerías a las ubicaciones
echo estándar.
echo.
echo Cualquier tecla para continuar, Ctrl-C para cancelar.
echo ==============================================================================
pause

echo ==============================================================================
echo Copiando Archivo Personal de Macros a:
echo %appdata%\Microsoft\Excel\XLSTART...
echo.

copy XLSTART\PersonalDev.* Personal.* > nul
del *.TXTXL.TXT
copy "Personal.*" "%appdata%\Microsoft\Excel\XLSTART" > nul
del Personal.*

echo Listo.
echo.

echo ==============================================================================
echo DENTRO DE EXCEL, RE-ASIGNAR LOS ACCESOS DIRECTOS A LAS MACROS QUE LAS TUVIERAN
echo ==============================================================================
echo.

echo ------------------------------------------------------------------------------
echo Copiando librerias...
echo.

XCOPY MyLibs\*.* %appdata%\Microsoft\Excel\XLSTART\MyLibs /I /S /Y /Q /EXCLUDE:xcopy.ignore

echo Listo.
echo.
pause