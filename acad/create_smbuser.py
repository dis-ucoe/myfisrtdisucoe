#!/usr/bin/python

import sys,os

name = sys.argv[1]
passw = sys.argv[2]
if  os.system("ls /var/ftp/pub | grep "  + name)  !=  0:
	os.system('useradd -s /sbin/nologin ' + name)
	os.system('(echo ' + passw + ';echo ' + passw + ') | smbpasswd -s -a ' + name)
	os.system('setenforce 0')
	os.system('mkdir /var/ftp/pub/' + name)
	os.system('chmod  777  /var/ftp/pub/' + name)
	f=open("/etc/samba/smb.conf",'a')
	f.write("\n\n" + "[" + name + "] \npath = /var/ftp/pub/" + name + "\nwritable = yes\nvalid users = " + name + "\nguest ok = no\nforce user = " + name + "\npublic = no")
	f.close()
	os.system('systemctl restart smb.service')
	os.system('systemctl restart nmb.service')
