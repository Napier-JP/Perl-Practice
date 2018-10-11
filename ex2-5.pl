#!perl
use strict;
use warnings;
use utf8;

my $strA = <STDIN>;
chomp(my $numB = <STDIN>);

print $strA x $numB;