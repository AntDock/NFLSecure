echo off
mode con cols=55 lines=14
goto end

:end
TASKLIST /FI "WINDOWTITLE eq NFLSecure"|findstr "cmd"
if %errorlevel%==0 (
exit
)
TASKLIST /FI "WINDOWTITLE eq ѡ��NFLSecure"|findstr "cmd"
if %errorlevel%==0 (
exit
)
TASKLIST /FI "WINDOWTITLE eq ����Ա*NFLSecure"|findstr "cmd"
if %errorlevel%==0 (
exit
)

cls
title NFLSecure
echo ������������������������������������������������������
echo �رճ����ҽ�������֮ǰ����ע�⣺
echo ������������������������������������������������������
echo �رճ���󣬱�����������ֹ����γ������ж��Ĵ����豸��
echo ������������������������������������������������������
pause
cls
title NFLSecure
echo ������������������������������������������������������
echo ���ڹر����������
echo ������������������������������������������������������
echo �����̰γ������ж��Ĵ����豸��
echo ������������������������������������������������������
break
call killall.bat