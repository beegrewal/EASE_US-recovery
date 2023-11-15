@echo off
set /a _Debug=0
::==========================================
:: Get Administrator Rights
set _Args=%*
if "%~1" NEQ "" (
  set _Args=%_Args:"=%
)
fltmc 1>nul 2>nul || (
  cd /d "%~dp0"
  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~dp0"" && ""%~dpnx0"" ""%_Args%""", "", "runas", 1 > "%temp%\GetAdmin.vbs"
  "%temp%\GetAdmin.vbs"
  del /f /q "%temp%\GetAdmin.vbs" 1>nul 2>nul
  exit
)
::==========================================
@shift /0
CLS
@COLOR b
@echo off

icacls "%SystemRoot%\System32\drivers\etc\hosts" /grant administrators:F

attrib -h -r -s "%SystemRoot%\System32\drivers\etc\hosts"

SET NEWLINE=^& echo.

FIND /C /I "easeus.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	easeus.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "www.easeus.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	www.easeus.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "activation.easeus.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	activation.easeus.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "easeus.com.cn" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	easeus.com.cn>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "www.easeus.com.cn" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	www.easeus.com.cn>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "track.easeus.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	track.easeus.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "track.easeus.com.cn" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	track.easeus.com.cn>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "api.easeus.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	api.easeus.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "update.easeus.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	update.easeus.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "map2.hwcdn.net" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	map2.hwcdn.net>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "easeusinfo.us-east-1.log.aliyuncs.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	easeusinfo.us-east-1.log.aliyuncs.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "aaa100cd68bbe03f3.awsglobalaccelerator.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	aaa100cd68bbe03f3.awsglobalaccelerator.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "uompro.easeus.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	uompro.easeus.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "order.easeus.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	order.easeus.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "curl.haxx.se" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	curl.haxx.se>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "buy.easeus.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	buy.easeus.com>>%WINDIR%\system32\drivers\etc\hosts

FIND /C /I "v2api-uoss.easeus.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	v2api-uoss.easeus.com>>%WINDIR%\system32\drivers\etc\hosts

ipconfig /flushdns

@Exit

