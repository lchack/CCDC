CCDC Judge Perspective
http://www.stayclassyinternet.com/blog/2013/05/23/ccdc-you-are-doing-it-wrong-a-judges-prospective/

CCDC Red Team Perspective (READ THIS)
https://docs.google.com/a/lclark.edu/presentation/d/1pPXLg3KqwSMLRCNRfows5QnVI2mLjSmll5vN2WHMFJg/edit#slide=id.ga0cc710_3_71

Unix to DOS commands:
http://www.ai.uga.edu/mc/winforunix.html

http://overthewire.org

https://education.deterlab.net/course/view.php?id=12
Check out #7, 9, 10

http://www.nationalccdc.org/files/CCDC%20Team%20Prep%20Guide.pdf

SANS Linux Hardening Checklist:
https://www.sans.org/score/checklists/linuxchecklist.pdf

Roles list:
Team Leader - Tadhg
Firewaller - Kaleb https://code.google.com/p/capirca
Network Sniffer - Adrian
Communications / Inject Manager - Chelsea
Linux Admin: Erik 
	- create list of setuid executables:  find / * -perm +6000 -type f -exec ls -ld {} \; > 
setugid.txt
	check out this Erik: http://www.tecmint.com/linux-server-hardening-security-tips/
	probably too heavy duty: http://www.debian.org/doc/manuals/securing-debian-howto/
sudo netstat -tulnp lists listening TCP / UDP ports


Windows Admin: Sam
	-disable teredo: netsh interface teredo set state disabled

Writer/Talk to Clients: Tadhg 


Key things:
Handling updates - http://www.autopatcher.com/
Changing passwords & keeping track of them
Checking for backdoors / extra accounts / unknown network connections / unknown processes

http://cyber-defense.sans.org/blog/2009/08/12/blue-team-defender-guide-cyber-war-games
Relevant defense information:
Linux:
tail -f important log files - this will update your terminal when the files are updated
for example - at the beginning run tail -f /etc/passwd to see if any new accounts are added

http://blog.spiderlabs.com/2013/04/web-application-defenders-cookbook-ccdc-blue-team-cheatsheet.html


http://seclists.org/pauldotcom/2009/q3/873
“Again Sysinternals Tools: Process Monitor, PSTools, TCPView
Kiwi Syslog Server & Viewer or comparable, Mandiant Highlighter
Nessus - Home Feed of course
Dumpsec - NTFS File Permission dumper
Your favorite free sniffer - Wireshark, etc..
MRTG - Router bandwidth monitoring
AVG or other decent free AV

IPTSTATE / TCPView (packet visualization)


Windows Software for the PAK:
http://processhacker.sourceforge.net/ / Process Hacker
http://technet.microsoft.com/en-us/sysinternals/bb897437.aspx / TCPView
http://technet.microsoft.com/en-us/sysinternals/bb896653.aspx / Process Explorer
http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html / Putty
http://www.wireshark.org / Wireshark
Autoruns-http://technet.microsoft.com/en-us/sysinternals/bb963902.aspx
Checking Host : OSSEC is an Open Source Host-based Intrusion Detection System that performs log analysis, file integrity checking, policy monitoring, rootkit detection, real-time alerting and active response. 	
http://www.techrepublic.com/blog/data-center/create-a-simple-honeypot-with-debian-and-nepenthes/320/#. HONEYPOT SET UP
OSSIM 

XP/2k3 then PATCH MS08_067
Vista/7/2k8 then PATCH MS09_050
Linux/BSD don't patch, secure the kernel

Windows login attempt logging
http://www.howtogeek.com/124313/how-to-see-who-logged-into-a-computer-and-when/
Windows file change logging
http://www.techotopia.com/index.php/Auditing_Windows_Server_2008_File_and_Folder_Access#Enabling_File_and_Folder_Auditing

Linux to Windows (DOS) Translation
http://www.ai.uga.edu/mc/winforunix.html


