# iaito_win32

This repository contains the required files to compile iaito on Windows.

## Compiling radare2 (lubuntu 16.04 x64)

```bash
sudo apt-get update
sudo apt-get install git build-essential mingw-w64
git clone --recurse-submodules https://github.com/hteso/iaito
cd iaito/radare2
sys/mingw32.sh
sys/mingw64.sh
```

If you want debug symbols, modify the `mingwXX.sh` so you have `CC="${C} -g -static-libgcc"` near the end of the script.

This should give you `radare2-w32-1.4.0-git.zip` and `radare2-w64-1.4.0-git.zip`.

## Updating this repository (Windows)

1. Extract `radare2-w32-1.4.0-git.zip` and `radare2-w64-1.4.0-git.zip` to the root of this repository.
2. Open a Visual Studio command prompt (you need `lib.exe` ) and run `update.bat`.