SANS Linux Hardening Checklist:
https://www.sans.org/score/checklists/linuxchecklist.pdf

General Linux hardening:
http://www.cyberciti.biz/tips/linux-security.html

Hardening OpenSSH server:
http://www.cyberciti.biz/tips/linux-unix-bsd-openssh-server-best-practices.html

Terminal based text editors on Linux:
vi/vim, emacs, nano, pico

Logging Procedure:
mkdir -p ~/logs/initial	(make a folder in your home directory called logs, inside it make a folder called initial)
cd ~/logs				(change working dir to that new folder)
sudo cp -R /var/log/ .	(copy the whole log folder!)
mv log initial			(rename the newly copied folder to something different (preferably that indicates time stamp) yay nested parens)
diff -r /var/log initial	(compare the current /var/log dir with your copy)

Remember that the name should not always be initial!
If you’re using the script, run the script and then run diff -r /var/log NAMEOFLOGDIR

Log files are stored in /var/log.
Relevant log files:
	auth.log	(authentication logs)
	syslog	(general system changes)
	kern.log	(kernel modules and information)

Other files to keep tabs on:
/etc/passwd	(usernames and ids)
Format: root:*:0:0:System Administrator:/var/root:/bin/sh
		     ^   ^ one of these is id, if you see a 0 here and it isn’t root, be scared
Things to watch out for: accounts that you don’t recognize (especially ones with shells that are NOT /bin/false, have home directories, OR have id of 0)

Only root account have UID 0 with full permissions to access the system. Type the following command to display all accounts with UID set to 0:
awk -F: '($3 == "0") {print}' /etc/passwd
You should only see one line as follows:
root:x:0:0:root:/root:/bin/bash

/etc/group
Format: admin:*:80:root
Look at group name and user account names. Key groups to look for: admin, wheel, sudo, nopasswdlogin (?). The users for each of these should ONLY be root and your account (and nothing for nopasswdlogin)

/etc/sudoers
Format: %admin ALL=(ALL) ALL
In this case, the admin group has permissions to do whatever it wants. We should probably keep things in the sudoers file to a minimum.

/etc/shadow
Format: root:akljfjklfajklhfahlgglkhajhlf:16140:0:99999:7:::
The gibberish is the password hash.
Check for accounts that have no password in /etc/shadow:
awk -F: '($2 == "") {print}' /etc/shadow

Stop/start/restart a service:
service servicename start/stop/restart

Check these files and make sure they are blank / only have information that you put there. These store public keys that are authorized to log in as this user WITHOUT password.
~/.ssh/authorized_keys
/root/.ssh/authorized_keys

Getting updates on Ubuntu:
sudo apt-get update	(update lists of available software DOES NOT UPGRADE!)
sudo apt-get upgrade	(upgrade software)

Listing running processes:
ps ax				(list all running procs)
ps aux username		(specify a user to see their procs)

Listing listening ports:
netstat -ano		(show all listening ports in netstat)
lsof -nPi			(show all listening ports in lsof, not sure the diff here)

Kernel hardening: Edit /etc/sysctl.conf
# Turn on execshield
kernel.exec-shield=1
kernel.randomize_va_space=1
# Enable IP spoofing protection
net.ipv4.conf.all.rp_filter=1
# Disable IP source routing
net.ipv4.conf.all.accept_source_route=0
# Ignoring broadcasts request
net.ipv4.icmp_echo_ignore_broadcasts=1
net.ipv4.icmp_ignore_bogus_error_messages=1
# Make sure spoofed packets get logged
net.ipv4.conf.all.log_martians = 1

Disable IPv6:
open file /etc/modprobe.d/aliases
vi /etc/modprobe.d/aliases
Find the line:
alias net-pf-10 ipv6
Replace with:
alias net-pf-10 off
alias ipv6 off
Save and close the file.