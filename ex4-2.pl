#!perl
use strict;
use warnings;
use utf8;

sub total{
    my $sum = 0;
    foreach(@_){
        $sum += $_;
    }
    return $sum;
}

print &total((1..1000));