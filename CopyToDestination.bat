@echo off
echo ==============================================================================
echo Se copiar�n los archivos de macros personales y de librer�as a las ubicaciones
echo est�ndar.
echo.
echo Cualquier tecla para continuar, Ctrl-C para cancelar.
echo ==============================================================================
echo.
pause > nul

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
echo Presione cualquier tecla para copiar las librer�as, Ctrl-C para cancelar.
echo.
pause > nul

echo ------------------------------------------------------------------------------
echo Copiando librerias...
echo.

XCOPY MyLibs\*.* %appdata%\Microsoft\Excel\MyLibs /I /S /Y /Q /EXCLUDE:xcopy.ignore

echo Listo.
echo.
pause > nul