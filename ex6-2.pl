#!perl
use strict;
use warnings;
use utf8;

my %count = ();

chomp(my @lines = <STDIN>);

foreach my $word (@lines){
    $count{$word} += 1;
}

foreach my $key (sort keys(%count)){
    print "$key $count{$key}\n";
}