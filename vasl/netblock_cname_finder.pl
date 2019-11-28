#***************************************************************************************#
#----------------------- EULA LICENSE AGREEMENT NOTICE ---------------------------------#
#1. This software uses EULA based software agreement that grants users rights to use for#
#any purpose, modify and redistribute creative works about this perl software.          #
#2. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#what you do with by/this software. Your free to use this software as it is for any     #
#purpose that suites as long as it is not related to crime.                             #
#***************************************************************************************#

#!/usr/bin/env perl
use LWP::UserAgent;
no warnings 'uninitialized';
use Term::ANSIColor;
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.1) Gecko/20090624 Firefox/3.5");
system "clear";
print color('bold red');
print "\n\n					   	 	Project: Panthera\n";
print " 						        Coder: Haroon Awan\n\n\n";
print color('bold yellow');
print "[ + ] Version: 		Open Source Edition 1.0a\n";
print "[ + ] Contact: 		mrharoonawan\@gmail\.com \n";
print "[ + ] Environment: 	Shell & Perl under Kali Linux\n";
print "[ + ] Github: 		Https://www.github.com/haroonawanethicalhacker\n";
print "[ + ] Design Scheme: 	Dig records for alises and cname by sweeping network block\n";
print "[ + ] Usage: 		$0 network block address\n\n";
print color('reset');
print color('bold green');
$site="$ARGV[0]";

print "[ + ] Enter Block : "; 
chomp(my $ipblock = <STDIN>);
sleep (2);
print "[ + ] Sweeping network block using Nmap\n";
print "[ + ] Writting data in livehosts_sweepfile.txt\n"; 
my $sysa = system("nmap -sP '$ipblock' > livehosts_sweepfile.txt\n");
print "[ + ] Done\n\n";
print "[ + ] Starting background operations\n";
print "[ + ] Enumerating all network aliases and cname records\n";
my $sysb = system("dig +noall +answer -f livehosts_sweepfile.txt | awk -f cnamefinder.awk > cnamefinder_sweepfile.txt\n");
print "[ + ] Finished enumerating live hosts of all network block for records\n\n";
print "[ + ] Starting background operations\n";
print "[ + ] Finding live hosts cname records\n";
my $sysc = system("dig -f cnamefinder_sweepfile.txt cname > cnamehosts_sweepfile.txt\n");
print "[ + ] Finished, enumerating live hosts cname records\n\n";
print "[ + ] Starting background operations\n";
print "[ + ] Finding live hosts cname records\n";
my $sysc = system("cat cnamehosts_sweepfile.txt 2> /dev/null | awk '/CNAME|SOA/ {print}' > cnamerecords_netblock.txt\n");
print "[ + ] Finished, enumerating live hosts cname records\n\n";
print "[ + ] Tweaking\n";
my $sysd = system("rm cnamefinder_sweepfile.txt && rm cnamehosts_sweepfile.txt");
print "[ + ] Finished Tweaking\n";
exit;

