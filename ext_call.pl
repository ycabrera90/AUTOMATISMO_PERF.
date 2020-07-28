#!/usr/bin/perl


#L	lamando a este fichero con el dlgid del datalogger se corren las perforaciones per
#	Ex: 
#		ext_call --dlgid [my_dlgid]


use strict;
 
use Getopt::Long;

use lib '/drbd/www/cgi-bin/spx/PERFORACIONES/PROCESS';				#SPY
use spx_process_perf;	
 
my $my_dlgid;	

GetOptions ('dlgid=s' => \$my_dlgid);
print("=>$my_dlgid\n");

process_perf ($my_dlgid,'CHARGE');
