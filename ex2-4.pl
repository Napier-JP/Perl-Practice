#!perl
use strict;
use warnings;
use utf8;

chomp(my $numA = <STDIN>);
chomp(my $numB = <STDIN>);

print $numA * $numB;