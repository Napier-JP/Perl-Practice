use strict;
use warnings;

foreach(glob "*"){
	my($atime, $mtime) = (stat)[8,9]; #not stat[8,9], stat each file then slice it
	printf "%20s %10d %10d\n", $_, $atime, $mtime;
}
