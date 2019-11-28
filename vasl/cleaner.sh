#***************************************************************************************#
#----------------------- EULA LICENSE AGREEMENT NOTICE ---------------------------------#
#1. This software uses EULA based software agreement that grants users rights to use for#
#any purpose, modify and redistribute creative works about this perl software.          #
#2. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#what you do with by/this software. Your free to use this software as it is for any     #
#purpose that suites as long as it is not related to crime.                             #
#***************************************************************************************#

#!/bin/bash
sed 's/,//g' subdomains.txt > s1
sed 's/"//g' s1 > s2
sed 's/.$//g' s2 > s3
echo "[ + ] Cleaning and automatic adjusting data "
echo -n "[ + ] Enter Domain again in dot format now: "
read web; awk -v v1=$web '{print $0 v1}' s2 > s3
sed 's/\.\././g' s3 > s4
tail -n+5 s4 > s5
sed -e :a -e '$d;N;2,3ba' -e 'P;D' s5 > s6
cat s6 > subdomains
rm s1
rm s2
rm s3
rm s4
rm s5
rm s6
rm subdomains.txt
