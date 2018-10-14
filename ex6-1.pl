#!perl
use strict;
use warnings;
use utf8;

my %roster = (
    "fred" => "flintstone",
    "barney" => "rubble",
    "wilma" => "flintstone",
);

chomp(my $input = <STDIN>);

print $roster{$input};