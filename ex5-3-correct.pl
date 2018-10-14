#!perl
use strict;
use warnings;
use utf8;

chomp(my @input = <STDIN>);
my $width = shift(@input);

print "1234567890" x (($width+9)/10), "\n"; #目盛り

foreach my $line (@input){
    printf "%${width}s\n", $line;
}