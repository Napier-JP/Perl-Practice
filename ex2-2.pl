#!perl
use strict;
use warnings;
use utf8;

my $pi = atan2(1,1) * 4;
my $radius = <STDIN>;
chomp($radius);

print $radius * 2 * $pi;
