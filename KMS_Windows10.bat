@ECHO OFF&PUSHD %~DP0 &TITLE KMS_Windows10  
@mode con lines=23 cols=28
color 0A
cd /d "%SystemRoot%\system32" 2 > NUL || (Echo Please run as Admin! && Pause > nul && Exit )  
echo ------Choose_Version------
echo 1.Pro
echo 2.Pro N
echo 3.Pro Workstations
echo 4.Pro Workstations N
echo 5.Pro Education
echo 6.Pro Education N
echo 7.Education
echo 8.Education N
echo 9.Enterprise
echo 10.Enterprise N
echo 11.Enterprise G
echo 12.Enterprise G N
echo 13.Enterprise LTSC 2019
echo 14.Enterprise N LTSC 2019
echo 15.Enterprise LTSB 2016
echo 16.Enterprise N LTSB 2016
echo 17.Enterprise 2015 LTSB
echo 18.Enterprise 2015 LTSB N
echo --------------------------
set /p version=Version:
if %version% lss 19 (
    slmgr.vbs /upk
    goto version_%version%
)else (
    cls
    echo Wrong.
    pause>nul 
    exit
)

:active
    slmgr /skms 192.168.31.210
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
    slmgr.vbs -ipk MH37W-N47XK-V7XM9-C7227-GCQG9
    goto active
	
:version_3
    slmgr.vbs -ipk NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
    goto active
	
:version_4
    slmgr.vbs -ipk 9FNHH-K3HBT-3W4TD-6383H-6XYWF
    goto active
	
:version_5
    slmgr.vbs -ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
    goto active
	
:version_6
    slmgr.vbs -ipk YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
    goto active
	
:version_7
    slmgr.vbs -ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
    goto active
	
:version_8
    slmgr.vbs -ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
    goto active
	
:version_9
    slmgr.vbs -ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
    goto active
	
:version_10
    slmgr.vbs -ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
    goto active
	
:version_11
    slmgr.vbs -ipk YYVX9-NTFWV-6MDM3-9PT4T-4M68B
    goto active
	
:version_12
    slmgr.vbs -ipk 44RPN-FTY23-9VTTB-MP9BX-T84FV
    goto active
	
:version_13
    slmgr.vbs -ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
    goto active
	
:version_14
    slmgr.vbs -ipk 92NFX-8DJQP-P6BBQ-THF9C-7CG2H
    goto active
	
:version_15
    slmgr.vbs -ipk DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
    goto active
	
:version_16
    slmgr.vbs -ipk QFFDN-GRT3P-VKWWX-X7T3R-8B639
    goto active
	
:version_17
    slmgr.vbs -ipk WNMTR-4C88C-JK8YV-HQ7T2-76DF9
    goto active
	
:version_18
    slmgr.vbs -ipk 2F77B-TNFGY-69QQF-B8YKP-D69TJ
    goto active
