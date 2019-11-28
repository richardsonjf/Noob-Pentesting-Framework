#!/bin/bash

red="\e[0;31m"
new="\e[0;36m"
green="\e[0;32m"
off="\e[0m"

clear
function banner() {
echo "
						Screaming Cobra Loader
        					        version 1.0a
                			       Script - Hackeruniversee
					       Coder  - Haroon Awan
"
}
banner
echo -e "$red [$green+$red] 1:$off Linux Users"; 
echo -e "$red [$green+$red] 2:$off Termux Users";
echo "";
echo -ne "$red [$green+$red] Select An Option:$off: " ;
read Option
if [ $Option -eq "1" ]
then 
 echo "";
 echo -e "$red [$green+$red] 1:$off Normal Version "; 
 echo -e "$red [$green+$red] 2:$off Dom Case Version ";
 echo -e "$red [$green+$red] 3:$off URL Reflection Version "; 
 echo -e "$red [$green+$red] 4:$off InlineHTML Version ";
 echo -e "$red [$green+$red] 5:$off Javapayload Version ";
 echo -e "$red [$green+$red] 6:$off Show File Upload XSS ";
 echo "";
 echo -ne "$red [$green+$red] Select An Option:$off: " ;
 read Option
 if [ $Option -eq "1" ]
 then
    python ScreamingCobra1.py
 fi

 if [ $Option -eq "2" ]
 then
    python ScreamingCobra2.py
 fi

 if [ $Option -eq "3" ]
 then
    python ScreamingCobra3.py
 fi

 if [ $Option -eq "4" ]
 then
    python ScreamingCobra4.py
 fi

 if [ $Option -eq "5" ]
 then
    cat xss.gif
 fi

fi 
if [ $Option -eq "2" ]
then
 echo ""; 
 echo -e "$red [$green+$red] 1:$off Normal Version "; 
 echo -e "$red [$green+$red] 2:$off Dom Case Version ";
 echo -e "$red [$green+$red] 3:$off URL Reflection Version "; 
 echo -e "$red [$green+$red] 4:$off InlineHTML Version ";
 echo -e "$red [$green+$red] 5:$off Javapayload Version ";
 echo -e "$red [$green+$red] 6:$off Show File Upload XSS ";

 echo ""; 
 echo -ne "$red [$green+$red] Select An Option:$off: " ;
 read Option
 if [ $Option -eq "1" ]
 then
    python2 ScreamingCobra1.py
 fi

 if [ $Option -eq "2" ]
 then
    python2 ScreamingCobra2.py
 fi
 if [ $Option -eq "3" ]
 then
    python ScreamingCobra3.py
 fi

 if [ $Option -eq "4" ]
 then
    python ScreamingCobra4.py
 fi

 if [ $Option -eq "5" ]
 then
    python ScreamingCobra5.py
 fi

if [ $Option -eq "6" ]
 then
    cat xss.gif
 fi
fi 
