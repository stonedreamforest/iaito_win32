@echo off
cd %R2_32DIR%
for %%f in (*.dll *.exe) do echo %R2_32DIR%\%%f && cv2pdb -n %%f
del *.def
for %%f in (*.dll) do gendef %%f
del *.lib
for %%f in (*.def) do lib /def:%%f /MACHINE:X86
del *.def *.exp
call removePrefix lib *.lib
cd ..

cd %R2_64DIR%
for %%f in (*.dll *.exe) do echo %R2_64DIR%\%%f && cv2pdb -n %%f
del *.def
for %%f in (*.dll) do gendef %%f
del *.lib
for %%f in (*.def) do lib /def:%%f /MACHINE:X64
del *.def *.exp
call removePrefix lib *.lib
cd ..