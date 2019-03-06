@ECHO OFF&PUSHD %~DP0 &TITLE Office激活  
@mode con lines=19 cols=70
color 0A
echo ---------------提示：此脚本需要以管理员身份运行---------------
echo ---------------此脚本将激活以下所有已安装的软件---------------
echo Office Professional Plus 2016
echo Project Professional 2016
echo Visio Professional 2016
echo Access 2016
echo Excel 2016
echo OneNote 2016
echo Outlook 2016
echo PowerPoint 2016
echo Publisher 2016
echo Skype for Business 2016
echo Word 2016
echo -------------------请选择Office软件安装目录-------------------
echo 1.默认1 C:\Program Files\Microsoft Office\Office16;
echo 2.默认2 C:\Program Files (x86)\Microsoft Office\Office16;
echo 3.当前目录(将此文件放在Office安装目录下(目录内有OSPP.VBS文件))
echo --------------------------------------------------------------
set /p directory=目录:
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

    cscript ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99
	cscript ospp.vbs /inpkey:YG9NW-3K39V-2T3HJ-93F3Q-G83KT
	cscript ospp.vbs /inpkey:PD3PC-RHNGV-FXJ29-8JK7D-RJRJK
	cscript ospp.vbs /inpkey:GNH9Y-D2J4T-FJHGG-QRVH7-QPFDW
	cscript ospp.vbs /inpkey:9C2PK-NWTVB-JMPW8-BFT28-7FTBF
	cscript ospp.vbs /inpkey:DR92N-9HTF2-97XKM-XW2WJ-XW3J6
	cscript ospp.vbs /inpkey:R69KK-NTPKF-7M3Q4-QYBHW-6MT9B
	cscript ospp.vbs /inpkey:J7MQP-HNJ4Y-WJ7YM-PFYGF-BY6C6
	cscript ospp.vbs /inpkey:F47MM-N3XJP-TQXJ9-BP99D-8K837
	cscript ospp.vbs /inpkey:869NQ-FJ69K-466HW-QYCP2-DDBV6
	cscript ospp.vbs /inpkey:WXY84-JN2Q9-RBCCQ-3Q3J3-3PFJ6
	cscript ospp.vbs /sethst:192.168.31.180
	cscript ospp.vbs /setprt:1688
	cscript ospp.vbs /act
    
    echo Finish.
    pause>nul
    exit