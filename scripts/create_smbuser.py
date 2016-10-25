#!/usr/bin/python

import sys,os

name = sys.argv[1]
passw = sys.argv[2]
os.system('(echo ' + passw + ';echo ' + passw + ') | sudo  smbpasswd -s -a ' + name)
if  os.system("ls /var/ftp/pub | grep "  + name)  !=  0:
	os.system('sudo useradd -s /sbin/nologin ' + name)
	os.system('sudo setenforce 0')
	os.system('mkdir /var/ftp/pub/' + name)
	os.system('chmod  777  /var/ftp/pub/' + name)
	f=open("/etc/samba/smb.conf",'a')
	f.write("\n\n" + "[" + name + "] \npath = /var/ftp/pub/" + name + "\nwritable = yes\nvalid users = " + name + "\nguest ok = no\nforce user = " + name + "\npublic = no")
	f.close()
	os.system('sudo systemctl restart smb.service')
	os.system('sudo systemctl restart nmb.service')
