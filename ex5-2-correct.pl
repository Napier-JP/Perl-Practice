#!perl
use strict;
use warnings;
use utf8;

chomp(my @input = <STDIN>);

print "1234567890123456789012345678901234567890\n"; #目盛り

foreach my $line (@input){
    printf "%20s\n", $line;
}