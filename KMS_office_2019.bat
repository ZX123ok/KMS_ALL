@ECHO OFF&PUSHD %~DP0 &TITLE Office����  
@mode con lines=19 cols=70
color 0A
echo ---------------��ʾ���˽ű���Ҫ�Թ���Ա�������---------------
echo ---------------�˽ű����������������Ѱ�װ�����---------------
echo Office Professional Plus 2019
echo Project Professional 2019
echo Visio Professional 2019
echo Access 2019
echo Excel 2019
echo (no onenote)
echo Outlook 2019
echo PowerPoint 2019
echo Publisher 2019
echo Skype for Business 2019
echo Word 2019
echo -------------------��ѡ��Office�����װĿ¼-------------------
echo 1.Ĭ��1 C:\Program Files\Microsoft Office\Office16;
echo 2.Ĭ��2 C:\Program Files (x86)\Microsoft Office\Office16;
echo 3.��ǰĿ¼(�����ļ�����Office��װĿ¼��(Ŀ¼����OSPP.VBS�ļ�))
echo --------------------------------------------------------------
set /p directory=Ŀ¼:
if %directory% lss 4 (
    goto dir_%directory%
)else (
    cls
    echo Wrong,num.
    pause>nul 
    exit
)
:dir_1
    cd /d C:\Program Files\Microsoft Office\Office16
    goto dir_3
	
:dir_2
    cd /d C:\Program Files (x86)\Microsoft Office\Office16
    goto dir_3
	
:dir_3

    cscript ospp.vbs /inpkey:NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP
	cscript ospp.vbs /inpkey:B4NPR-3FKK7-T2MBV-FRQ4W-PKD2B
	cscript ospp.vbs /inpkey:9BGNQ-K37YR-RQHF2-38RQ3-7VCBB
	cscript ospp.vbs /inpkey:9N9PT-27V4Y-VJ2PD-YXFMF-YTFQT
	cscript ospp.vbs /inpkey:TMJWT-YYNMB-3BKTF-644FC-RVXBD
	cscript ospp.vbs /inpkey:7HD7K-N4PVK-BHBCQ-YWQRW-XW4VK
	cscript ospp.vbs /inpkey:RRNCX-C64HY-W2MM7-MCH9G-TJHMQ
	cscript ospp.vbs /inpkey:G2KWX-3NW6P-PY93R-JXK2T-C9Y9V
	cscript ospp.vbs /inpkey:NCJ33-JHBBY-HTK98-MYCV8-HMKHJ
	cscript ospp.vbs /inpkey:PBX3G-NWMT6-Q7XBW-PYJGG-WXD33
	cscript ospp.vbs /sethst:192.168.31.180
	cscript ospp.vbs /setprt:1688
	cscript ospp.vbs /act
    
    echo Finish.
    pause>nul
    exit