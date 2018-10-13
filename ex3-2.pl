#!perl
use strict;
use warnings;
use utf8;

my @hardCodedNames = qw(fred betty barney dino wilma pebbles bamm-bamm);
chomp(my @input = <STDIN>);

foreach my $num (@input){
    print "$hardCodedNames[$num - 1]\n";
}