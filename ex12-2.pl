use strict;
use warnings;

my $oldestName = "";
my $oldestDays = 0;

while(@ARGV){
	my $file = shift(@ARGV);
	my $daysPast = -M $file;
	if($daysPast > $oldestDays){
		$oldestName = $file;
		$oldestDays = $daysPast;
	}
}

print "${oldestName} ${oldestDays} days ago\n";
