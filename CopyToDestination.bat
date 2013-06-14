copy XLSTART\PersonalDev.* Personal.*
del *.TXTXL.TXT
copy "Personal.*" "%appdata%\Microsoft\Excel\XLSTART"
del Personal.*