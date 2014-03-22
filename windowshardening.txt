http://searchsecurity.techtarget.com/How-to-harden-Windows-to-improve-security

Remove all unnecessary executables and registry entries. Forgetting to remove unneeded executables and registry entries might allow an attacker to invoke something that had previously been disabled. 
Apply appropriately restrictive permissions to files, services, end points and registry entries. Inappropriate permissions could give an attacker an opening. The ability to launch CMD.EXE as "LocalSystem," for example, is a classic backdoor.

http://securitywing.com/windows-2008-server-security-hardening-with-automated-tools/

MBSA (Microsoft Baseline security analyzer) 
This simple tool can quickly identify that if your server has the latest updates or hotfixes. You can use it to install the missing security patches from Microsoft the keep your server align with Microsoft security recommendations. You can download this tool from Microsoft.
SCW (security configuration wizard)
This is simply a great tool that can quickly identify the roles of your servers and the installed features including networking, Windows firewalls and registry settings.
 (SCM) Microsoft security compliance management toolkit
Once you download this tool, it will automatically update its security baselines for various Microsoft products such as Windows Servers, SQL servers, Internet explorer. 
(MSE) Microsoft Security Essentials 
	This is the anti-virus software we want to use. Simple to install and mostly takes care of itself. 
Get it here: http://microsoft-security-essentials.todownload.com/?lp=adwords&kw=Microsoft%20security%20essentials&mt=e&ad=36775328358&pl=&ds=s&gclid=CLzx9fShoL0CFROVfgodJacAvQ


ADMINISTRATIVE TOOLS CAN LOG AND DO STUFF 

XP/2k3 then PATCH MS08_067
Vista/7/2k8 then PATCH MS09_050

Windows login attempt logging
http://www.howtogeek.com/124313/how-to-see-who-logged-into-a-computer-and-when/
Windows file change logging
http://www.techotopia.com/index.php/Auditing_Windows_Server_2008_File_and_Folder_Access#Enabling_File_and_Folder_Auditing





Windows Software for the PAK:
http://processhacker.sourceforge.net/ / Process Hacker
http://technet.microsoft.com/en-us/sysinternals/bb897437.aspx / TCPView
http://technet.microsoft.com/en-us/sysinternals/bb896653.aspx / Process Explorer
http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html / Putty
http://www.wireshark.org / Wireshark
Autoruns-http://technet.microsoft.com/en-us/sysinternals/bb963902.aspx
Checking Host : OSSEC is an Open Source Host-based Intrusion Detection System that performs log analysis, file integrity checking, policy monitoring, rootkit detection, real-time alerting and active response. 	
PeerBlock- software package that does IP blocking for windows and supports LARGE IP lists (like every IP but my subnet) and supports egress
Some specific Windows Group Policy to set
Security Options
Network security: LAN Manager authentication level - Send NTLMv2  response only\refuse NTLM & LM
Network security: Do not store LAN Manager hash value on next password change - Enabled
Network access: Do not allow anonymous enumeration of SAM accounts and shares - Enabled
Network access: Do not allow anonymous enumeration of SAM accounts - Enabled
Network access: Allow anonymous SID/name translation - Disabled
Accounts: Rename administrator account - Rename to something unique (but remember it)
Interactive logon: Message text for users attempting to log on - sometimes an inject












Display a local share
NET SHARE sharename

Display a list of computers in the current domain.
NET VIEW

To see a list of shares on a remote computer
NET VIEW \\ComputerName

To see a list of all shares in the domain:
NET VIEW /DOMAIN

To see a list of shares on a different domain
NET VIEW /DOMAIN:domainname

To see a list of shares on a remote Netware computer
NET VIEW /NETWORK:NW [\\ComputerName]

Create a new local file share
NET SHARE sharename=drive:path /REMARK:"text" [/CACHE:Manual | Automatic | No ]

Limit the number of users who can connect to a share
NET SHARE sharename /USERS:number /REMARK:"text"

Remove any limit on the number of users who can connect to a share
NET SHARE sharename /UNLIMITED /REMARK:"text"

Delete a share
NET SHARE {sharename | devicename | drive:path} /DELETE

Delete all shares that apply to a given device
NET SHARE devicename /DELETE
In this case the devicename can be a printer (Lpt1) or a pathname (C:\Docs\)

Join a file share (Drive MAP)
NET USE

Display all the open shared files on a server and the lock-id
NET FILE

Close a shared file (disconnect other users and remove file locks)
NET FILE id /CLOSE

List all sessions connected to this machine
NET SESSION

List sessions from a given machine
NET SESSION \\ComputerName

Disconnect all sessions connected to this machine
NET SESSION /DELETE

Disconnect all sessions connected to this machine (without any prompts)
NET SESSION /DELETE /y

Disconnect sessions from a given machine
NET SESSION \\ComputerName /DELETE

Notes:
NET SESSION displays incoming connections only, in other words it must be run on the machine that is acting as the server.
To create file shares the SERVER service must be running, which in turn requires 'File and Print Sharing' to be installed.

