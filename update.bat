::Start this from a Visual Studio command prompt
set R2_32DIR=radare2-w32-1.4.0-git
set R2_64DIR=radare2-w64-1.4.0-git
set PATH=%PATH%;%~dp0tools

::Generate PDB files (requires you to build r2 with the "-g" flag).
::Generate LIB files.
call prepare_r2.bat

::Copy libs
rmdir /S /Q radare2\lib32
mkdir radare2\lib32
copy %R2_32DIR%\*.lib radare2\lib32
rmdir /S /Q radare2\lib64
mkdir radare2\lib64
copy %R2_64DIR%\*.lib radare2\lib64

::Copy includes
rmdir /S /Q radare2\include
mkdir radare2\include
xcopy %R2_32DIR%\include radare2\include /S /Y