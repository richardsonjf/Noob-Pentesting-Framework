#!/bin/bash
sed -e 's/^.*://g' < 5_subdomains.txt  > cat
sed -e 's/^.*from netcraft.com//g' < cat > cat1
sed -e 's/^.*from virustotal.com//g' < cat1 > cat2
sed -e 's/^.*from threatcrowd.org//g' < cat2 > cat3
sed -e 's/^.*from virustotal.com//g' < cat3 > cat4
sed -e 's/^.*from dnsdumpster.com//g' < cat4 > cat5
sed -e 's/^.*from censys.io//g' < cat4 > cat5
sed -e 's/^.*from dnsdumpster.com//g' < cat5 > cat6
sed '/^[[:space:]]*$/d' cat6 > cat7
awk '!seen[$0]++' cat7 > cat8
cp cat8 5_subdomains.txt
rm cat8
rm cat7
rm cat6
rm cat5
rm cat4
rm cat3
rm cat2
rm cat1
rm cat