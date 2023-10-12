@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist E:\XAMPPServer\hypersonic\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\server\hsql-sample-database\scripts\ctl.bat START)
if exist E:\XAMPPServer\ingres\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\ingres\scripts\ctl.bat START)
if exist E:\XAMPPServer\mysql\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\mysql\scripts\ctl.bat START)
if exist E:\XAMPPServer\postgresql\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\postgresql\scripts\ctl.bat START)
if exist E:\XAMPPServer\apache\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\apache\scripts\ctl.bat START)
if exist E:\XAMPPServer\openoffice\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\openoffice\scripts\ctl.bat START)
if exist E:\XAMPPServer\apache-tomcat\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\apache-tomcat\scripts\ctl.bat START)
if exist E:\XAMPPServer\resin\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\resin\scripts\ctl.bat START)
if exist E:\XAMPPServer\jetty\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\jetty\scripts\ctl.bat START)
if exist E:\XAMPPServer\subversion\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist E:\XAMPPServer\lucene\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\lucene\scripts\ctl.bat START)
if exist E:\XAMPPServer\third_application\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist E:\XAMPPServer\third_application\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\third_application\scripts\ctl.bat STOP)
if exist E:\XAMPPServer\lucene\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist E:\XAMPPServer\subversion\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\subversion\scripts\ctl.bat STOP)
if exist E:\XAMPPServer\jetty\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\jetty\scripts\ctl.bat STOP)
if exist E:\XAMPPServer\hypersonic\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist E:\XAMPPServer\resin\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\resin\scripts\ctl.bat STOP)
if exist E:\XAMPPServer\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT E:\XAMPPServer\apache-tomcat\scripts\ctl.bat STOP)
if exist E:\XAMPPServer\openoffice\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\openoffice\scripts\ctl.bat STOP)
if exist E:\XAMPPServer\apache\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\apache\scripts\ctl.bat STOP)
if exist E:\XAMPPServer\ingres\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\ingres\scripts\ctl.bat STOP)
if exist E:\XAMPPServer\mysql\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\mysql\scripts\ctl.bat STOP)
if exist E:\XAMPPServer\postgresql\scripts\ctl.bat (start /MIN /B E:\XAMPPServer\postgresql\scripts\ctl.bat STOP)

:end

