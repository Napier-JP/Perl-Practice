use strict;
use warnings;

open(my $inputFH, "<", "ex8-resource.txt") or die "unable to open file";
chomp(my @lines = <$inputFH>);

while(1){
	chomp(my $search = <STDIN>);
	if($search =~ /\A \s* \z/x){
		last;
	}
	my @result = grep /$search/, @lines;
	my $count = @result; #count matches by converting to scalar
	print "$count matches found.\n";
	foreach(@result){
		print "$_\n";
	}
}
