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
echo ———————————————————————————
echo NFLSecure 南京外国语学校 班级电脑杀毒工具
echo ———————————————————————————
echo 版本：5.0.210818(Dev)(ZH_CN)
echo ———————————————————————————
echo 张哲涵、皮睿杰、马涵政制作。本软件可按照 MIT 开源许可
echo 协议使用。建议使用管理员权限访问。
echo ———————————————————————————
pause
cls
:SECURE
cls
title NFLSecure
echo ———————————————————————————
echo 首页 - 实时防护运行中
echo ———————————————————————————
echo 版本：5.0.210818(Dev)(ZH_CN)
echo ———————————————————————————
echo 可用操作号
echo (G)lobal - 全局杀毒（一键杀除病毒）
echo (P)artial - 专杀模式（查杀指定病毒）
echo (D)ump - 清理电脑（安全清理缓存垃圾）
echo (E)xit - 完全退出（关闭所有关联进程并结束防护）
echo ———————————————————————————
echo 请输入括号中的大写操作号（G或P或D或E）并按下 Enter。
set /p n=操作：
if "%n%"=="G" cls&goto :KillVirus
if "%n%"=="P" cls&goto :Chooser
if /i "%n%"=="D" cls&goto :Dump
if /i "%n%"=="E" cls&goto :End
if "%n%"=="" cls&goto :SECURE

:Chooser
cls
title NFLSecure
echo ———————————————————————————
echo 专杀模式 - 实时防护运行中
echo ———————————————————————————
echo 模块版本：20210605_01_Full
echo ———————————————————————————
echo 可用操作号
echo (A)vast - 将U盘根目录变为只有一个快捷方式的病毒
echo (F)akeFolder - 将U盘根目录文件夹变为应用程序的病毒
echo (E)xit - 返回主页面
echo ———————————————————————————
echo 请输入括号中的大写操作号（A或F或E）并按下 Enter。
set /p n=操作：
if "%n%"=="A" cls&goto :KillAvast
if "%n%"=="F" cls&goto :KillFF
if "%n%"=="D" cls&goto :Dump
if /i "%n%"=="E" cls&goto :SECURE
if "%n%"=="" cls&goto :Chooser

:KillVirus
cls
title NFLSecure
echo ———————————————————————————
echo 全局杀毒即将开始...
echo ———————————————————————————
echo 杀毒前请注意以下事项！
echo ———————————————————————————
echo 继续运行前：请确保您的可移除磁盘的根目录下无任何 .EXE
echo 或 .INK 文件，它们会被直接删除。
echo ———————————————————————————
pause
cls
title NFLSecure
echo ———————————————————————————
echo 全局杀毒中...
echo ———————————————————————————
echo 删除 Avast、FakeFolder 本地病毒文件...
echo ———————————————————————————
echo 错误信息：
DEL /F /Q C:\ProgramData\AvastSvcpCP
del /F /Q C:\Users\Administrator\AppData\Roaming\Microsoft\Office\rundll32.exe
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo 全局杀毒中...
echo ———————————————————————————
echo 删除 Avast 磁盘病毒文件...
echo ———————————————————————————
echo 错误信息：
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
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo 全局杀毒中...
echo ———————————————————————————
echo 恢复 Avast、FakeFolder 隐藏原文件...
echo ———————————————————————————
echo 错误信息：
echo Warning - 本步骤耗时可能稍长，请稍候...
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
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo 全局杀毒中...
echo ———————————————————————————
echo 删除 Avast、FakeFolder 病毒相关文件...
echo ———————————————————————————
echo 错误信息：
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
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo 全局杀毒完成！
echo ———————————————————————————
pause
goto SECURE

:KillAvast
cls
title NFLSecure
echo ———————————————————————————
echo Avast 专杀即将开始...
echo ———————————————————————————
echo 杀毒前请注意以下事项！
echo ———————————————————————————
echo 继续运行前：请确保您的可移除磁盘的根目录下无任何 .EXE
echo 或 .INK 文件，它们会被直接删除。
echo ———————————————————————————
pause
cls
title NFLSecure
echo ———————————————————————————
echo Avast 专杀中...
echo ———————————————————————————
echo 删除 Avast 本地病毒文件...
echo ———————————————————————————
echo 错误信息：
DEL /F /Q C:\ProgramData\AvastSvcpCP
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo Avast 专杀中...
echo ———————————————————————————
echo 删除 Avast 磁盘病毒文件...
echo ———————————————————————————
echo 错误信息：
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
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo Avast 专杀中...
echo ———————————————————————————
echo 恢复 Avast 隐藏原文件...
echo ———————————————————————————
echo 错误信息：
echo Warning - 本步骤耗时可能稍长，请稍候...
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
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo Avast 专杀中...
echo ———————————————————————————
echo 删除 Avast 病毒相关文件...
echo ———————————————————————————
echo 错误信息：
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
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo Avast 专杀完成！
echo ———————————————————————————
pause
goto SECURE

:KillFF
cls
title NFLSecure
echo ———————————————————————————
echo FakeFolder 专杀即将开始...
echo ———————————————————————————
echo 杀毒前请注意以下事项！
echo ———————————————————————————
echo 继续运行前：请确保您的可移除磁盘的根目录下无任何 .EXE
echo 或 .INK 文件，它们会被直接删除。
echo ———————————————————————————
pause
cls
title NFLSecure
echo ———————————————————————————
echo FakeFolder 专杀中...
echo ———————————————————————————
echo 删除 FakeFolder 本地病毒文件...
echo ———————————————————————————
echo 错误信息：
del /F /Q C:\Users\Administrator\AppData\Roaming\Microsoft\Office\rundll32.exe
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo FakeFolder 专杀中...
echo ———————————————————————————
echo 恢复 FakeFolder 隐藏原文件...
echo ———————————————————————————
echo 错误信息：
echo Warning - 本步骤耗时可能稍长，请稍候...
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
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo FakeFolder 专杀中...
echo ———————————————————————————
echo 删除 FakeFolder 病毒相关文件...
echo ———————————————————————————
echo 错误信息：
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
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo FakeFolder 专杀完成！
echo ———————————————————————————
pause
goto SECURE

:Dump
cls
echo ———————————————————————————
echo 安全清理中...
echo ———————————————————————————
echo 清理 SystemDrive ...
echo ———————————————————————————
echo 错误信息：
echo Warning - 本步骤耗时可能稍长，请稍候...
echo Warning - 建议使用管理员权限运行，清理更彻底
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old 
del /f /a /q %systemdrive%\*.sqm 
echo ———————————————————————————
cls
echo ———————————————————————————
echo 安全清理中...
echo ———————————————————————————
echo 清理 WinDir ...
echo ———————————————————————————
echo 错误信息：
echo Warning - 本步骤耗时可能稍长，请稍候...
echo Warning - 建议使用管理员权限运行，清理更彻底
del /f /s /q %windir%\*.bak 
del /f /s /q %windir%\temp\*.* 
del /f /s /q %windir%\SoftwareDistribution\Download\*.* 
echo ———————————————————————————
cls
echo ———————————————————————————
echo 安全清理中...
echo ———————————————————————————
echo 清理 UserProfile ...
echo ———————————————————————————
echo 错误信息：
echo Warning - 本步骤耗时可能稍长，请稍候...
echo Warning - 建议使用管理员权限运行，清理更彻底
del /f /s /q "%userprofile%\cookies\*.*" 
del /f /s /q "%userprofile%\recent\*.*" 
del /f /s /q "%userprofile%\local settings\temporary internet files\*.*" 
del /f /s /q "%userprofile%\local settings\temp\*.*" 
echo ———————————————————————————
break
cls
echo ———————————————————————————
echo 安全清理完成！接下来可以继续杀毒。
echo ———————————————————————————
pause
goto SECURE

:end
exit

