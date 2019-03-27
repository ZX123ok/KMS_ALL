@ECHO OFF&PUSHD %~DP0 &TITLE Windwos激活  
@mode con lines=13 cols=28
color 0A
cd /d "%SystemRoot%\system32" 2>NUL||(Echo 请使用右键管理员身份运行！&&Pause >nul&&Exit)  
echo -------选择激活版本-------
echo 1.专业版       windows;
echo 2.企业版       windows;
echo 3.专业工作站版 windows;
echo 4.教育版       windows;
echo 5.专业版N      windows;
echo 6.企业版N      windows;
echo 7.教育版N      windows;
echo 8.企业版LSTB   windows;
echo 9.企业版LSTB N windows;
echo --------------------------
set /p version=激活版本:
if %version% lss 10 (
    slmgr.vbs /upk
    goto version_%version%
)else (
    cls
    echo 输入错误,按任意键退出.
    pause>nul 
    exit
)

:active
    slmgr /skms 192.227.246.25
    slmgr /ato
    slmgr /xpr
    cls
    echo Finish.
    pause>nul
    exit

:version_1
    slmgr.vbs -ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    goto active
	
:version_2
    slmgr.vbs -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
    goto active
	
:version_3
    slmgr.vbs -ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
    goto active
	
:version_4
    slmgr.vbs -ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
    goto active
	
:version_5
    slmgr.vbs -ipk MH37W-N47XK-V7XM9-C7227-GCQG9
    goto active
	
:version_6
    slmgr.vbs -ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
    goto active
	
:version_7
    slmgr.vbs -ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
    goto active
	
:version_8
    slmgr.vbs -ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9
    goto active
	
:version_9
    slmgr.vbs -ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ
    goto active
