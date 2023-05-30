ECHO "Setting up Zomboid Server Manager"
SET /P CacheDir = "Enter Project Zomboid Cache directory: "
FOR /f %%p in ('where python') do SET PYTHONPATH=%%p0
if %PYTHONPATH% == NUL GOTO INSTALLPYTHON


:INSTALLPYTHON
    REM -- Install Python installer
    CURL "https://www.python.org/ftp/python/3.11.3/python-3.11.3-amd64.exe" -o python-installer.exe
    python-installer.exe /quiet InstallAllUsers=1 PrependPath=1
    CALL RefreshEnv.cmd