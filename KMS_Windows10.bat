@ECHO OFF&PUSHD %~DP0 &TITLE Windwos����  
@mode con lines=13 cols=28
color 0A
cd /d "%SystemRoot%\system32" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)  
echo -------ѡ�񼤻�汾-------
echo 1.רҵ��       windows;
echo 2.��ҵ��       windows;
echo 3.רҵ����վ�� windows;
echo 4.������       windows;
echo 5.רҵ��N      windows;
echo 6.��ҵ��N      windows;
echo 7.������N      windows;
echo 8.��ҵ��LSTB   windows;
echo 9.��ҵ��LSTB N windows;
echo --------------------------
set /p version=����汾:
if %version% lss 10 (
    slmgr.vbs /upk
    goto version_%version%
)else (
    cls
    echo �������,��������˳�.
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
