echo off
mode con cols=55 lines=13
cls
TASKLIST /FI "WINDOWTITLE eq NFLSecure"|findstr "cmd"
if %errorlevel%==0 (
exit
)
title NFLSecure
start /min container.bat /c
start /min quitmonitor.bat /c
start /min restarter.bat /c
echo ������������������������������������������������������
echo NFLSecure �Ͼ������ѧУ �༶����ɱ������
echo ������������������������������������������������������
echo �汾��5.0.210818(Dev)(ZH_CN)
echo ������������������������������������������������������
echo ���ܺ���Ƥܡ�����������������ɰ��� MIT ��Դ���
echo Э��ʹ�á�����ʹ�ù���ԱȨ�޷��ʡ�
echo ������������������������������������������������������
pause
cls
:SECURE
cls
title NFLSecure
echo ������������������������������������������������������
echo ��ҳ - ʵʱ����������
echo ������������������������������������������������������
echo �汾��5.0.210818(Dev)(ZH_CN)
echo ������������������������������������������������������
echo ���ò�����
echo (G)lobal - ȫ��ɱ����һ��ɱ��������
echo (P)artial - רɱģʽ����ɱָ��������
echo (D)ump - ������ԣ���ȫ������������
echo (E)xit - ��ȫ�˳����ر����й������̲�����������
echo ������������������������������������������������������
echo �����������еĴ�д�����ţ�G��P��D��E�������� Enter��
set /p n=������
if "%n%"=="G" cls&goto :KillVirus
if "%n%"=="P" cls&goto :Chooser
if /i "%n%"=="D" cls&goto :Dump
if /i "%n%"=="E" cls&goto :End
if "%n%"=="" cls&goto :SECURE

:Chooser
cls
title NFLSecure
echo ������������������������������������������������������
echo רɱģʽ - ʵʱ����������
echo ������������������������������������������������������
echo ģ��汾��20210605_01_Full
echo ������������������������������������������������������
echo ���ò�����
echo (A)vast - ��U�̸�Ŀ¼��Ϊֻ��һ����ݷ�ʽ�Ĳ���
echo (F)akeFolder - ��U�̸�Ŀ¼�ļ��б�ΪӦ�ó���Ĳ���
echo (E)xit - ������ҳ��
echo ������������������������������������������������������
echo �����������еĴ�д�����ţ�A��F��E�������� Enter��
set /p n=������
if "%n%"=="A" cls&goto :KillAvast
if "%n%"=="F" cls&goto :KillFF
if "%n%"=="D" cls&goto :Dump
if /i "%n%"=="E" cls&goto :SECURE
if "%n%"=="" cls&goto :Chooser

:KillVirus
cls
title NFLSecure
echo ������������������������������������������������������
echo ȫ��ɱ��������ʼ...
echo ������������������������������������������������������
echo ɱ��ǰ��ע���������
echo ������������������������������������������������������
echo ��������ǰ����ȷ�����Ŀ��Ƴ����̵ĸ�Ŀ¼�����κ� .EXE
echo �� .INK �ļ������ǻᱻֱ��ɾ����
echo ������������������������������������������������������
pause
cls
title NFLSecure
echo ������������������������������������������������������
echo ȫ��ɱ����...
echo ������������������������������������������������������
echo ɾ�� Avast��FakeFolder ���ز����ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
DEL /F /Q C:\ProgramData\AvastSvcpCP
del /F /Q C:\Users\Administrator\AppData\Roaming\Microsoft\Office\rundll32.exe
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo ȫ��ɱ����...
echo ������������������������������������������������������
echo ɾ�� Avast ���̲����ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
DEL E:\RECYCLER.BIN\1\ /S /Q
DEL F:\RECYCLER.BIN\1\ /S /Q
DEL G:\RECYCLER.BIN\1\ /S /Q
DEL H:\RECYCLER.BIN\1\ /S /Q
DEL I:\RECYCLER.BIN\1\ /S /Q
DEL J:\RECYCLER.BIN\1\ /S /Q
DEL K:\RECYCLER.BIN\1\ /S /Q
DEL L:\RECYCLER.BIN\1\ /S /Q
DEL M:\RECYCLER.BIN\1\ /S /Q
DEL N:\RECYCLER.BIN\1\ /S /Q
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo ȫ��ɱ����...
echo ������������������������������������������������������
echo �ָ� Avast��FakeFolder ����ԭ�ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
echo Warning - �������ʱ�����Գ������Ժ�...
attrib -s -h E:\* /s /d
attrib -s -h F:\* /s /d
attrib -s -h G:\* /s /d
attrib -s -h H:\* /s /d
attrib -s -h I:\* /s /d
attrib -s -h J:\* /s /d
attrib -s -h K:\* /s /d
attrib -s -h L:\* /s /d
attrib -s -h M:\* /s /d
attrib -s -h N:\* /s /d
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo ȫ��ɱ����...
echo ������������������������������������������������������
echo ɾ�� Avast��FakeFolder ��������ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
del E:\*.lnk
del F:\*.lnk
del G:\*.lnk
del H:\*.lnk
del I:\*.lnk
del J:\*.lnk
del K:\*.lnk
del L:\*.lnk
del M:\*.lnk
del N:\*.lnk
del E:\*.exe
del F:\*.exe
del G:\*.exe
del H:\*.exe
del I:\*.exe
del J:\*.exe
del K:\*.exe
del L:\*.exe
del M:\*.exe
del N:\*.exe
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo ȫ��ɱ����ɣ�
echo ������������������������������������������������������
pause
goto SECURE

:KillAvast
cls
title NFLSecure
echo ������������������������������������������������������
echo Avast רɱ������ʼ...
echo ������������������������������������������������������
echo ɱ��ǰ��ע���������
echo ������������������������������������������������������
echo ��������ǰ����ȷ�����Ŀ��Ƴ����̵ĸ�Ŀ¼�����κ� .EXE
echo �� .INK �ļ������ǻᱻֱ��ɾ����
echo ������������������������������������������������������
pause
cls
title NFLSecure
echo ������������������������������������������������������
echo Avast רɱ��...
echo ������������������������������������������������������
echo ɾ�� Avast ���ز����ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
DEL /F /Q C:\ProgramData\AvastSvcpCP
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo Avast רɱ��...
echo ������������������������������������������������������
echo ɾ�� Avast ���̲����ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
DEL E:\RECYCLER.BIN\1\ /S /Q
DEL F:\RECYCLER.BIN\1\ /S /Q
DEL G:\RECYCLER.BIN\1\ /S /Q
DEL H:\RECYCLER.BIN\1\ /S /Q
DEL I:\RECYCLER.BIN\1\ /S /Q
DEL J:\RECYCLER.BIN\1\ /S /Q
DEL K:\RECYCLER.BIN\1\ /S /Q
DEL L:\RECYCLER.BIN\1\ /S /Q
DEL M:\RECYCLER.BIN\1\ /S /Q
DEL N:\RECYCLER.BIN\1\ /S /Q
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo Avast רɱ��...
echo ������������������������������������������������������
echo �ָ� Avast ����ԭ�ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
echo Warning - �������ʱ�����Գ������Ժ�...
attrib -s -h E:\* /s /d
attrib -s -h F:\* /s /d
attrib -s -h G:\* /s /d
attrib -s -h H:\* /s /d
attrib -s -h I:\* /s /d
attrib -s -h J:\* /s /d
attrib -s -h K:\* /s /d
attrib -s -h L:\* /s /d
attrib -s -h M:\* /s /d
attrib -s -h N:\* /s /d
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo Avast רɱ��...
echo ������������������������������������������������������
echo ɾ�� Avast ��������ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
del E:\*.lnk
del F:\*.lnk
del G:\*.lnk
del H:\*.lnk
del I:\*.lnk
del J:\*.lnk
del K:\*.lnk
del L:\*.lnk
del M:\*.lnk
del N:\*.lnk
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo Avast רɱ��ɣ�
echo ������������������������������������������������������
pause
goto SECURE

:KillFF
cls
title NFLSecure
echo ������������������������������������������������������
echo FakeFolder רɱ������ʼ...
echo ������������������������������������������������������
echo ɱ��ǰ��ע���������
echo ������������������������������������������������������
echo ��������ǰ����ȷ�����Ŀ��Ƴ����̵ĸ�Ŀ¼�����κ� .EXE
echo �� .INK �ļ������ǻᱻֱ��ɾ����
echo ������������������������������������������������������
pause
cls
title NFLSecure
echo ������������������������������������������������������
echo FakeFolder רɱ��...
echo ������������������������������������������������������
echo ɾ�� FakeFolder ���ز����ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
del /F /Q C:\Users\Administrator\AppData\Roaming\Microsoft\Office\rundll32.exe
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo FakeFolder רɱ��...
echo ������������������������������������������������������
echo �ָ� FakeFolder ����ԭ�ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
echo Warning - �������ʱ�����Գ������Ժ�...
attrib -s -h E:\* /s /d
attrib -s -h F:\* /s /d
attrib -s -h G:\* /s /d
attrib -s -h H:\* /s /d
attrib -s -h I:\* /s /d
attrib -s -h J:\* /s /d
attrib -s -h K:\* /s /d
attrib -s -h L:\* /s /d
attrib -s -h M:\* /s /d
attrib -s -h N:\* /s /d
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo FakeFolder רɱ��...
echo ������������������������������������������������������
echo ɾ�� FakeFolder ��������ļ�...
echo ������������������������������������������������������
echo ������Ϣ��
del E:\*.exe
del F:\*.exe
del G:\*.exe
del H:\*.exe
del I:\*.exe
del J:\*.exe
del K:\*.exe
del L:\*.exe
del M:\*.exe
del N:\*.exe
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo FakeFolder רɱ��ɣ�
echo ������������������������������������������������������
pause
goto SECURE

:Dump
cls
echo ������������������������������������������������������
echo ��ȫ������...
echo ������������������������������������������������������
echo ���� SystemDrive ...
echo ������������������������������������������������������
echo ������Ϣ��
echo Warning - �������ʱ�����Գ������Ժ�...
echo Warning - ����ʹ�ù���ԱȨ�����У����������
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old 
del /f /a /q %systemdrive%\*.sqm 
echo ������������������������������������������������������
cls
echo ������������������������������������������������������
echo ��ȫ������...
echo ������������������������������������������������������
echo ���� WinDir ...
echo ������������������������������������������������������
echo ������Ϣ��
echo Warning - �������ʱ�����Գ������Ժ�...
echo Warning - ����ʹ�ù���ԱȨ�����У����������
del /f /s /q %windir%\*.bak 
del /f /s /q %windir%\temp\*.* 
del /f /s /q %windir%\SoftwareDistribution\Download\*.* 
echo ������������������������������������������������������
cls
echo ������������������������������������������������������
echo ��ȫ������...
echo ������������������������������������������������������
echo ���� UserProfile ...
echo ������������������������������������������������������
echo ������Ϣ��
echo Warning - �������ʱ�����Գ������Ժ�...
echo Warning - ����ʹ�ù���ԱȨ�����У����������
del /f /s /q "%userprofile%\cookies\*.*" 
del /f /s /q "%userprofile%\recent\*.*" 
del /f /s /q "%userprofile%\local settings\temporary internet files\*.*" 
del /f /s /q "%userprofile%\local settings\temp\*.*" 
echo ������������������������������������������������������
break
cls
echo ������������������������������������������������������
echo ��ȫ������ɣ����������Լ���ɱ����
echo ������������������������������������������������������
pause
goto SECURE

:end
exit

