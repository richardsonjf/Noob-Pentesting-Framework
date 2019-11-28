#***************************************************************************************#
#----------------------- EULA LICENSE AGREEMENT NOTICE ---------------------------------#
#1. This software uses EULA based software agreement that grants users rights to use for#
#any purpose, modify and redistribute creative works about this perl software.          #
#2. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#what you do with by/this software. Your free to use this software as it is for any     #
#purpose that suites as long as it is not related to crime.                             #
#***************************************************************************************#

#!/usr/bin/env python

import os
import requests
import sys
from scapy.all import *
import argparse, os, sys, threading
import logging
logging.getLogger("scapy.runtime").setLevel(logging.ERROR)
from time import sleep

cmd = "clear"
returned_value = os.system(cmd)
sys.stdout.write("\033[1;31m")
print "\n\n                                                                Project: VASL"
print "						             Coder: Haroon Awan\n\n"
sys.stdout.write("\033[1;33m")
print "[ + ] Version: 		Open Source Edition 1.0a"
print "[ + ] Contact: 		mrharoonawan@gmail.com"
print "[ + ] Environment: 	Shell and Python for Debian/Kali"
print "[ + ] Github: 		Https://www.github.com/haroonawanofficial"
print "[ + ] Design Scheme: 	Automatic subdomain finder and canonical records finder"
print "[ + ] Example Usage:    python vasl.py"
print "[ + ] In program usage: Read readme file before using\n\n"

sys.stdout.write("\033[0;32m")
name = input("[ + ] Enter domain in double quotes formats: ")
print "[ + ] Please wait, contacting target";
print "[ + ] Verifying, collecting records and writing data";
sleep (2);
url = ("https://api.securitytrails.com/v1/domain/" + name + "/subdomains")
	
querystring = {"apikey":"vNSVS6PirkCgrU7LbCIQ73MuFow43xVY"}
response = requests.request("GET", url, params=querystring)

#print(response.text)
file = open("subdomains.txt", "w")
file.write(response.text)
file.close()
def getch():
     os.system("./cleaner.sh")
     os.system("./checker.sh")
getch()
