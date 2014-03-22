UNIX command or feature
Windows equivalent

cat (to concatenate files)
copy (for details type help copy)

cat filename
copy filename CON:

cd, chdir
cd (with arguments; . and .. work as in UNIX)

chmod
attrib (simple operations affecting all users)
cacls (advanced operations involving specific users)
Or just right-click on the file and choose Properties, Security.

cp
copy (basic functions)
xcopy (advanced functions including directory recursion)

cron
Control Panel, Scheduled Tasks.
At the command line, use at.

.cshrc, .login
Login scripts (see Windows help system). Also, default environment variables, including PATH, are in Control Panel, System.

csh, tcsh
cmd.exe

Ctrl-C (interrupt)
Ctrl-C

Ctrl-D (end of file)
Ctrl-Z

/dev/tty
CON:

/etc/passwd
/etc/shadow
Internal object-oriented database; see Control Panel or Administrative Tools

ftp
ftp

ftp daemon
Internet Information Services (IIS)

grep
find (simple cases);
findstr (multiple alternatives, regular expressions)
(There are also implementations of grep for Windows, e.g., from Borland.)

http daemon
Internet Information Services (IIS)

ifconfig
ipconfig /all (to view settings)
Settings, Network to change settings

less filename
more filename

ls
ls -al
dir

man
help
Also type any command followed by /?

mkdir
mkdir

more filename
more filename

mv
move to relocate files or directories
rename to rename files or directories

netstat
netstat
net view

nslookup	
nslookup

passwd
To change your own password, press Ctrl-Alt-Del and choose Change Password.
To change users' passwords, use Control Panel, Administrative Tools, or Control Panel, User Accounts.

Perl and Python
Available for Windows too, with same functionality

ping
ping

ps
Press Ctrl-Alt-Del, select Task Manager

public_html
user's directory under C:\inetpub\wwwroot

pwd
cd (without arguments)

rm filename
del filename

rm -r directory
rmdir /s directory

rmdir
rmdir

set
set

shell scripts
.BAT and .CMD files; VBSCRIPT programs

sort
sort
(Pipes and redirection work much the same as in UNIX.)

telnet
telnet

telnet daemon
Telnet service (under Control Panel, Services); not enabled by default. Server versions of Windows also provide a Remote Access Service with GUI.

traceroute
tracert

/var/adm/messages
Event Viewer (in Control Panel, Administrative Tools)

vi
notepad (GUI editor, startable from command line); pay attention to whether you're saving your file as ASCII or Unicode

w
who
net session

