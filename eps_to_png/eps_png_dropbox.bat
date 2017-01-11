echo off
:loop
echo ------------Starting the python program...
eps_png_dropbox.py  

echo ------------Progam failed; 10 minutes countdown to restart...
timeout /t 60            

echo ------------Restarting program...
goto loop                        