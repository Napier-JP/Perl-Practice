#!perl
use strict;
use warnings;
use utf8;

print "1234567890123456789012345678901234567890\n"; #目盛り

foreach my $arg (@ARGV){
    printf "%20s\n", $arg;
}