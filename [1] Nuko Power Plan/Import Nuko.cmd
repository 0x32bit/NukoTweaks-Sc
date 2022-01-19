@echo off
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/815098719019466794/928865101983940638/nuko-pow.pow" -OutFile "%temp%\nuko-pow.pow"
powercfg -import "%temp%\nuko-pow.pow" 66666666-6666-6666-6666-666666666669
powercfg -SETACTIVE "66666666-6666-6666-6666-666666666669"
powercfg /changename 66666666-6666-6666-6666-666666666669 "Nuko Power Plan" "Best Booster Fps Power Plan"
goto success

:success
SET msgboxTitle=Success
SET msgboxBody=Nuko Power Plan has been activated!
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"





