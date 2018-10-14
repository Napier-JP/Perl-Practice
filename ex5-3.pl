#!perl
use strict;
use warnings;
use utf8;

my $width = shift(@ARGV);

print "1234567890" x ($width/10 + 1), "\n"; #目盛り

foreach my $arg (@ARGV){
    printf "%${width}s\n", $arg;
}