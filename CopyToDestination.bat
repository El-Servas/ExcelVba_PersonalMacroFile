@echo off
echo Copiando Archivo Personal de Macros a:
echo %appdata%\Microsoft\Excel\XLSTART...
copy XLSTART\PersonalDev.* Personal.* > nul
del *.TXTXL.TXT
copy "Personal.*" "%appdata%\Microsoft\Excel\XLSTART" > nul
del Personal.*
echo Listo.
echo DENTRO DE EXCEL, RE-ASIGNAR LOS ACCESOS DIRECTOS A LAS MACROS QUE LAS TUVIERAN
pause