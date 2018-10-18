use strict;
use warnings;
use Business::ISBN;

my $book = Business::ISBN->new("9781449393090");
my $gcode = $book->group_code;
my $pcode = $book->publisher_code;

print "group code:$gcode, publisher code:$pcode\n";
