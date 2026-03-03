@echo off

SET PEMMR_HOME=C:\mPEMMR
SET CLASSPATH=%PEMMR_HOME%\mPEMMR_3.1.jar;%PEMMR_HOME%\parquet-1.0-SNAPSHOT.jar

set MEM=80G

if ""%1""=="""" goto example

goto exec1

:example
echo Example) mPEMMR_3.1 [mPEMMR_param.txt]
goto end

:exec1

java -Xmx%MEM% mpemmr.PEMMRExec %*
goto end

:end
